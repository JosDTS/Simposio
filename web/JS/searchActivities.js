/* 
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/JavaScript.js to edit this template
 */

document.getElementById('searchButton').addEventListener('click', function() {
    var filter = document.getElementById('searchInput').value.toLowerCase();
    var activities = document.querySelectorAll('.activity');

    activities.forEach(function(activity) {
        var text = activity.textContent.toLowerCase();
        if (text.includes(filter)) {
            activity.parentElement.style.display = '';
        } else {
            activity.parentElement.style.display = 'none';
        }
    });
});

