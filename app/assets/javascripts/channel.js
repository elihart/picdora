// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.

// Pass in channel id. Returns json of an image to display
function getChannelImage(id, count, callback) {

    $.ajax({
        url: PICDORA.BASE_URL + "channel/image_request",
        data: {"channel_id": id, "count": count},
        cache : false
    })
        .done(callback);

}

function recordLike(channel_id, image_id, liked) {
    $.ajax({
        url: PICDORA.BASE_URL + "channel/record_like",
        data: {"channel_id": channel_id, "image_id": image_id, "liked": liked}
    })
}
