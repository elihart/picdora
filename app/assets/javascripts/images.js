function ImageLoader(channel_id) {
    var that = this;
    var images = [];
    var channel_id = channel_id;

    // number of images to get per request. Bigger batches reduce image loading time for the user,
    // and reduce server bandwidth and cpu, however, it uses more of the user's memory and large batches
    // won't quickly reflect updated image preferences
    var BATCH_SIZE = 15;
    // number of images to save for going back. Don't use too much of user's system memory,
    // especially for mobile
    var BACKLOG_SIZE = 10;
    // the minimum size the queue should reach. If if dips below this, fetch more pictures
    var MIN_QUEUE_SIZE = BACKLOG_SIZE + BATCH_SIZE + 1;


    // queue is divided up with the front of the queue as the backlog, one spot
    // for the currently displayed image, and then
    // indexes BACKLOG_SIZE and after containing future images to show
    // |backlog indexes|current image index|queue of next images|
    var queue = [];
    // reuse <img> elements to save memory. Old images are added here after they are removed
    // from the queue backlog
    var availableImages = [];

    // preload queue with null values for backlog and 1 null value for current image
    for (var i = 0; i < BACKLOG_SIZE + 1; i++) {
        queue[i] = null;
    }

    function enqueueImage(image, callback) {
        // reuse an old img element if available, otherwise create a new one
        var $img = availableImages.length ? availableImages.shift() : $('<img/>');

        $img.unbind();
        $img.error(function () {
            console.log("Image failed " + $img.attr('src'));
        });


        $img.attr({
            src: image.url + '.jpg',
            loop: -1,
            id: image.id
        });

        if (callback) {
            $img.load(callback);
        }

        queue.push($img);
    }

    // fills the queue of images to display. If a callback function is provided
    // it will be passed on to the first image as an onload function
    this.loadQueue = function (callback) {
        getChannelImage(channel_id, BATCH_SIZE, function (data) {
            for (var i = 0; i < data.length; i++) {
                var image = data[i];
                log(image);
                // TODO: cleaner way to callback on first image load
                if (callback && i === 0) {
                    enqueueImage(image, callback);
                } else {
                    enqueueImage(image);
                }

            }
        });
    };

    this.nextImage = function () {
        // shift the queue of images down, and pop the oldest off the end. If it is not
        // null save it to reuse later
        var old_image = queue.shift();
        if (old_image !== null) {
            availableImages.push(old_image);
        }

        // fetch more images if the queue has gotten too low
        if (queue.length < MIN_QUEUE_SIZE) {
            that.loadQueue();
        }

        var nextImage = queue[BACKLOG_SIZE];

        if (!nextImage) {
            log("Warning: next image doesn't exist");
        }

        return nextImage;
    };

    // returns the previous image if possible, and null otherwise
    this.prevImage = function () {
        var prevImage = queue[BACKLOG_SIZE - 1];
        if (prevImage !== null) {
            // reverse the queue by adding a null value at the beginning
            queue.unshift(null);
            return prevImage;
        } else {
            return null;
        }
    };
}


function ImageDisplayer(view, mobile) {
    var activeImage;
    var view = view;
    var mobile = mobile;
    var that = this;

    this.setImage = function (image) {
        // Remove old image
        if (activeImage) {
            activeImage.fadeOut(function () {
                $(this).remove();
            });
        }

        activeImage = image;
        activeImage.appendTo(view);
        fitImageToScreen(image);
        activeImage.hide();
        activeImage.fadeIn();
    };

    this.getCurrentImageUrl = function () {
        if (activeImage) {
            return activeImage.attr('src');
        } else {
            return null;
        }
    };

    this.getCurrentImageId = function () {
        if (activeImage) {
            return activeImage.attr('id');
        } else {
            return null;
        }
    };

    this.reset = function () {
        if (activeImage) {
            activeImage.remove();
            activeImage = null;
        }
    };

    function fitImageToScreen(image) {
        var maxWidth = window.innerWidth;
        var maxHeight = window.innerHeight;

        var windowAspectRatio = maxWidth / maxHeight;
        var imageAspectRatio = image.width() / image.height();

        if (mobile) {
            // try to hide address bar
            window.scrollTo(0, 1);

            // Stretch image to take up full screen space on mobile
            if (imageAspectRatio > windowAspectRatio) {
                image.css({
                    width: '100%',
                    height: 'auto'
                });
            }

            else if (imageAspectRatio < windowAspectRatio) {
                image.css({
                    height: '100%',
                    width: 'auto'
                });
            }

            // center image
            var left = (maxWidth - image.width()) / 2;
            var top = (maxHeight - image.height()) / 2;
            image.css({left: left, top: top});
        }

        // non mobile
        else {
            // resize picture to fit screen
            if (imageAspectRatio > windowAspectRatio && image.width() > maxWidth) {
                image.css({
                    width: '100%',
                    height: 'auto'
                });
            }

            else if (imageAspectRatio < windowAspectRatio && image.height() > maxHeight) {
                image.css({
                    height: '100%',
                    width: 'auto'
                });
            }

            // center image
            var left = (maxWidth - image.width()) / 2;
            var top = (maxHeight - image.height()) / 2;
            image.css({left: left, top: top});
        }

    }

    // Called when the screen size or orientation changes
    this.redraw = function () {
        if (activeImage) {
            fitImageToScreen(activeImage);
        }
    }
}

function SettingsManager() {
    var gif, nsfw, slideshow, categories;

    /* save settings */
    this.save = function () {
        gif = $('#gif_check').is(':checked');
        setItem('gif', gif);

        slideshow = $('#slideshow_check').is(':checked');
        setItem('slideshow', slideshow);

        nsfw = $('#nsfw_check').is(':checked');
        setItem('nsfw', nsfw);

        categories = [];
        $('.category').filter(':checked').each(function () {
            categories.push(this.id);
        });
        setItem('categories', JSON.stringify(categories));
    };

    // load settings
    this.load = function () {
        gif = getItem('gif') === 'true' ? true : false;
        $('#gif_check').prop('checked', gif).button('refresh');

        slideshow = getItem('slideshow') === 'true' ? true : false;
        $('#slideshow_check').prop('checked', slideshow).button('refresh');

        nsfw = getItem('nsfw') === 'true' ? true : false;
        $('#nsfw_check').prop('checked', nsfw).button('refresh');
        // hide categories in accordance to button state
        if ($('#nsfw_check').is(':checked')) {
            $('#nsfw_categories').show();
            $('#sfw_categories').hide();
        } else {
            $('#nsfw_categories').hide();
            $('#sfw_categories').show();
        }

        categories = getItem('categories');
        if (categories) {
            $.each(JSON.parse(categories), function (index, value) {
                $("#" + value).prop('checked', true).button('refresh');
            });
        }
    };

    // mozilla cookie framework

    function getItem(sKey) {
        return decodeURIComponent(document.cookie.replace(new RegExp("(?:(?:^|.*;)\\s*" + encodeURIComponent(sKey).replace(/[\-\.\+\*]/g, "\\$&") + "\\s*\\=\\s*([^;]*).*$)|^.*$"), "$1")) || null;
    }

    function setItem(sKey, sValue, vEnd, sPath, sDomain, bSecure) {
        if (!sKey || /^(?:expires|max\-age|path|domain|secure)$/i.test(sKey)) {
            return false;
        }
        var sExpires = "";
        if (vEnd) {
            switch (vEnd.constructor) {
                case Number:
                    sExpires = vEnd === Infinity ? "; expires=Fri, 31 Dec 9999 23:59:59 GMT" : "; max-age=" + vEnd;
                    break;
                case String:
                    sExpires = "; expires=" + vEnd;
                    break;
                case Date:
                    sExpires = "; expires=" + vEnd.toUTCString();
                    break;
            }
        }
        document.cookie = encodeURIComponent(sKey) + "=" + encodeURIComponent(sValue) + sExpires + (sDomain ? "; domain=" + sDomain : "") + (sPath ? "; path=" + sPath : "") + (bSecure ? "; secure" : "");
        return true;
    }


    function removeItem(sKey, sPath, sDomain) {
        if (!sKey || !this.hasItem(sKey)) {
            return false;
        }
        document.cookie = encodeURIComponent(sKey) + "=; expires=Thu, 01 Jan 1970 00:00:00 GMT" + ( sDomain ? "; domain=" + sDomain : "") + ( sPath ? "; path=" + sPath : "");
        return true;
    }

    function hasItem(sKey) {
        return (new RegExp("(?:^|;\\s*)" + encodeURIComponent(sKey).replace(/[\-\.\+\*]/g, "\\$&") + "\\s*\\=")).test(document.cookie);
    }

}

function LoadingWidget(div) {
    var $div = div;
    var interval

    this.start = function () {
        $div.empty();

        // show loading container
        // TODO: Fix this bad style...
        $('#loading_container').css({display: 'table'});

        var $textSpan = $(document.createElement('span'));
        $div.append($textSpan);
        $textSpan.text("Loading");

        var offset = (window.innerWidth / 2) - $textSpan.width() / 2;
        $textSpan.css("margin-left", offset + "px");


        // animate ellipse
        var count = 1;
        var speed = 300;
        var numDots = 3;


        interval = setInterval(animate, speed);

        function animate() {
            var text = "Loading" + repeat(".", count % (numDots + 1));
            count += 1;
            $textSpan.text(text);
        }

        function repeat(pattern, count) {
            if (count < 1) return '';
            var result = '';
            while (count > 0) {
                if (count & 1) result += pattern;
                count >>= 1, pattern += pattern;
            }
            return result;
        }

    };

    this.stop = function () {
        $('#loading_container').css({display: 'none'});
        interval && clearInterval(interval);
    };

}
