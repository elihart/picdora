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
        console.log("next");
        return queue.shift();
    };

    this.useImage = function(image){
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
                //recycleFunction(this);
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

        if(mobile){
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
    this.redraw = function(){
        if(activeImage){
            fitImageToScreen(activeImage);
        }
    }
}
