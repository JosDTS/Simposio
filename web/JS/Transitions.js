/* 
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/JavaScript.js to edit this template
 */

document.addEventListener('DOMContentLoaded', function() {
    var mapaLink = document.getElementById('mapa');
    var submenu = document.getElementById('submenu');
    var menuItem = mapaLink.parentElement;

    mapaLink.addEventListener('click', function(e) {
        e.preventDefault();
        menuItem.classList.toggle('show');
    });

    document.addEventListener('click', function(e) {
        if (!menuItem.contains(e.target)) {
            menuItem.classList.remove('show');
        }
    });
});
