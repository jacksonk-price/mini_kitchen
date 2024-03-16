const Modal = (() => {
    const modal = () => document.querySelector("[data-modal]");
    const modalClose = () => document.querySelector("[data-close-modal]");

    const _openModal = (modalElement) => {
        modalElement.showModal();
    }

    const _closeModal = (modalElement) => {
        modalElement.close();
    }

    const _bindEvents = () => {
        document.addEventListener('turbo:frame-load', function() {
            const modalElement = modal();
            const modalCloseButton = modalClose();

            if (modalElement !== null) {
                _openModal(modalElement);
                modalCloseButton.addEventListener('click', function() {
                    _closeModal(modalElement);
                });
            }
        });
    }

    const init = () => {
        _bindEvents();
    }

    return {
        init: init
    }
})();

export { Modal };