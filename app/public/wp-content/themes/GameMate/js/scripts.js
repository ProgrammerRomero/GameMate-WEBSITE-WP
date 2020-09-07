


alert('funciona');


jQuery(document).ready(function($) {
    $('.site-header .menu-principal .menu').last().addClass('last').slicknav({
        label: '',
        appendTo: '.site-header'
    });

    //LeaftLet Map
    const   lat = document.querySelector('#lat').value,
            lng = document.querySelector('#lat').value,
            location = document.querySelector('#lat').value;

    if(lat && lng && location) {

        var map = L.map('map').setView([lat, lng], 15);
    
        L.tileLayer('https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png', {
            attribution: '&copy; <a href="https://www.openstreetmap.org/copyright">OpenStreetMap</a> contributors'
            }).addTo(map);
    
        L.marker([lat, lng]).addTo(map)
            .bindPopup('location')
            .openPopup();
    }

  });