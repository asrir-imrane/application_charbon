const detailsToggles = document.querySelectorAll('.details');
const detailContents = document.querySelectorAll('.card__content');
const cards = document.querySelectorAll('.Card');
const buttonContainers = document.querySelectorAll('.card__button-container');

cards.forEach(function (card, index) {
    card.addEventListener('click', function () {
        card.classList.toggle('open');
    });

    detailsToggles[index].addEventListener('click', function () {
        detailContents[index].classList.toggle('hidden');

    });

    buttonContainers[index].addEventListener('click', function (event) {
        event.stopPropagation();
    });
});

document.addEventListener('click', function (event) {
    cards.forEach(function (card, index) {
        if (!card.contains(event.target)) {
            card.classList.remove('open');
            detailContents[index].classList.add('hidden');
        }
    });
});
