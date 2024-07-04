/* 
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/JavaScript.js to edit this template
 */

document.addEventListener('DOMContentLoaded', () => {
    const inscribirseButtons = document.querySelectorAll('.btn-inscribirse');

    inscribirseButtons.forEach(button => {
        button.addEventListener('click', function(event) {
            event.preventDefault();
            const activityId = this.getAttribute('data-actividad-id');
            
            fetch('InscribirseServlet', {
                method: 'POST',
                headers: {
                    'Content-Type': 'application/json'
                },
                body: JSON.stringify({ activityId: activityId })
            })
            .then(response => response.json())
            .then(data => {
                if (data.success) {
                    alert('Inscripción exitosa. Cupos restantes: ' + data.cuposRestantes);
                } else {
                    alert(data.message);
                }
            })
            .catch(error => {
                console.error('Error:', error);
                alert('Error al inscribirse. Por favor, intente nuevamente más tarde.');
            });
        });
    });

   
    const searchButton = document.getElementById('searchButton');
    const searchInput = document.getElementById('searchInput');

    searchButton.addEventListener('click', function() {
        const query = searchInput.value.toLowerCase();
        const activities = document.querySelectorAll('.activity');
        
        activities.forEach(activity => {
            const title = activity.querySelector('h3').innerText.toLowerCase();
            if (title.includes(query)) {
                activity.style.display = 'block';
            } else {
                activity.style.display = 'none';
            }
        });
    });
});


