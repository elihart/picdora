function ImageLoader(image_array) {
    var images = image_array;

    var QUEUE_SIZE = 5;
    var queue = [];
    var availableImages = [];

    // Start loading queue
    for (var i = 0; i < QUEUE_SIZE; i++) {
        enqueueImage();
    }

    function enqueueImage() {
        var img = availableImages.length ? availableImages.shift() : $('<img/>');
        var url = images[getRandomInt(0, images.length)];
        img.attr("src", url);

        queue.push(img);
    }

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
        } else {
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
        $('.sfw_sub, .nsfw_sub').filter(':checked').each(function () {
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
