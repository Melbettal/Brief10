$(document).ready(() => {
    const searchParams = new URLSearchParams(window.location.search);
    if (searchParams.get('err')) {
        var params = {
            content: "email ou mot de passe incorrect",
            type: "error",
            behavior: {
                type: "normal"
            },
            duration: "active"
        }
        toast(params);
        console.log('slm');
    }
});