/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Dijkstra;

/**
 *
 * @author Sheys
 */
import java.util.*;

public class Dijkstra {
    public static String calcularRutaMasCorta(String startVertex, String endVertex, String[] vertices, int[][] grafo) {
        // Inicializar las distancias y los vértices previos
        Map<String, Double> distancias = new HashMap<>();
        Map<String, String> previos = new HashMap<>();
        Set<String> visitados = new HashSet<>();

        // Inicializar las distancias con valores infinitos, excepto para el vértice de inicio
        for (String vertice : vertices) {
            distancias.put(vertice, Double.MAX_VALUE);
        }
        distancias.put(startVertex, 0.0);

        // Encontrar el vértice con la distancia mínima no visitado
        while (!visitados.contains(endVertex)) {
            String verticeActual = encontrarVerticeNoVisitadoConMenorDistancia(distancias, visitados);
            visitados.add(verticeActual);

            // Actualizar las distancias de los vecinos del vértice actual
            for (int i = 0; i < vertices.length; i++) {
                if (grafo[Arrays.asList(vertices).indexOf(verticeActual)][i] != 0) {
                    String vecino = vertices[i];
                    double distanciaAlternativa = distancias.get(verticeActual) + grafo[Arrays.asList(vertices).indexOf(verticeActual)][i];

                    if (distanciaAlternativa < distancias.get(vecino)) {
                        distancias.put(vecino, distanciaAlternativa);
                        previos.put(vecino, verticeActual);
                    }
                }
            }
        }

        // Reconstruir la ruta más corta
        List<String> rutaMasCorta = new ArrayList<>();
        String verticeActual = endVertex;
        while (verticeActual != null) {
            rutaMasCorta.add(0, verticeActual);
            verticeActual = previos.get(verticeActual);
        }

        // Calcular la distancia total
        double distanciaTotal = distancias.get(endVertex);

        // Devolver la ruta más corta como una cadena de texto
        return String.join(" -> ", rutaMasCorta) + " (Distancia total: " + distanciaTotal + ")";
    }

    private static String encontrarVerticeNoVisitadoConMenorDistancia(Map<String, Double> distancias, Set<String> visitados) {
        double distanciaMinima = Double.MAX_VALUE;
        String verticeMinimo = null;

        for (Map.Entry<String, Double> entry : distancias.entrySet()) {
            String vertice = entry.getKey();
            double distancia = entry.getValue();

            if (!visitados.contains(vertice) && distancia < distanciaMinima) {
                distanciaMinima = distancia;
                verticeMinimo = vertice;
            }
        }

        return verticeMinimo;
    }
}

