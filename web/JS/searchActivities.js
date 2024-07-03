/* 
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/JavaScript.js to edit this template
 */

document.addEventListener('DOMContentLoaded', () => {
    const inscribirseButtons = document.querySelectorAll('.btn-inscribirse');

    inscribirseButtons.forEach(button => {
        button.addEventListener('click', function(event) {
            event.preventDefault();
            const activityName = this.closest('.activity').querySelector('h3').innerText;
            
            fetch('InscribirseServlet', {
                method: 'POST',
                headers: {
                    'Content-Type': 'application/json'
                },
                body: JSON.stringify({ activityName: activityName })
            })
            .then(response => response.json())
            .then(data => {
                if (data.success) {
                    alert('Inscripción exitosa');
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
});

