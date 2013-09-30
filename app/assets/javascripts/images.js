function ImageLoader() {
    var that = this;
    var images = [];

    var QUEUE_SIZE = 5;
    var queue = [];
    var availableImages = [];

    function enqueueImage() {
        var img = availableImages.length ? availableImages.shift() : $('<img/>');
        var url = images[getRandomInt(0, images.length)];

        $(img).unbind();
        $(img).error(function () {
            console.log("Image failed " + url);
        });

        img.attr("src", url);

        queue.push(img);
    }

    this.setImageList = function (imageList, callback) {
        // TODO: check for no images?

        // copy array of image urls
        images.length = 0;
        images = imageList.slice(0);

        // clear any old pictures
        queue.length = 0;

        // Start loading queue
        for (var i = 0; i < QUEUE_SIZE; i++) {
            enqueueImage();
        }

        // set callback for first image
        $(queue[0]).load(function () {
            callback();
        })
    };

    this.nextImage = function () {
        enqueueImage();
        return queue.shift();
    };

    this.useImage = function (image) {
        availableImages.push(image);
    }
}

function getRandomInt(min, max) {
    return Math.floor(Math.random() * (max - min + 1) + min);
}

function ImageDisplayer(view, mobile, recycleFunction) {
    var activeImage;
    var view = view;
    var mobile = mobile;
    var recycleFunction = recycleFunction;

    this.setImage = function (image) {
        // Remove old image
        if (activeImage) {
            activeImage.fadeOut(function () {
                $(this).remove();
                recycleFunction($(this));
            });
        }
        activeImage = image;
        activeImage.appendTo(view);
        fitImageToScreen(image);
        activeImage.hide();
        activeImage.fadeIn();


    };

    this.reset = function () {
        if (activeImage) {
            activeImage.remove();
            recycleFunction(activeImage);
            activeImage = null;
        }
    };

    function fitImageToScreen(image) {
        var maxWidth = window.innerWidth;
        var maxHeight = window.innerHeight;

        var windowAspectRatio = maxWidth / maxHeight;
        var imageAspectRatio = image.width() / image.height();

        if (mobile) {
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
        $div.empty().show();
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
        $(div).empty().hide();
        interval && clearInterval(interval);
    };

}
