/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Dijkstra;

import java.util.*;

/**
 * The Dijkstra class provides a method to calculate the shortest path between two vertices in a graph using Dijkstra's algorithm.
 */
public class Dijkstra {
    /**
     * Calculates the shortest path between the start vertex and the end vertex in the given graph.
     *
     * @param startVertex the starting vertex
     * @param endVertex   the ending vertex
     * @param vertices    an array of vertices in the graph
     * @param grafo       the adjacency matrix representing the graph
     * @return the shortest path as a string, including the total distance
     */
    public static String calcularRutaMasCorta(String startVertex, String endVertex, String[] vertices, int[][] grafo) {
       
        Map<String, Double> distancias = new HashMap<>();
        Map<String, String> previos = new HashMap<>();
        Set<String> visitados = new HashSet<>();

        
        for (String vertice : vertices) {
            distancias.put(vertice, Double.MAX_VALUE);
        }
        distancias.put(startVertex, 0.0);

       
        while (!visitados.contains(endVertex)) {
            String verticeActual = encontrarVerticeNoVisitadoConMenorDistancia(distancias, visitados);
            visitados.add(verticeActual);

            
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

       
        List<String> rutaMasCorta = new ArrayList<>();
        String verticeActual = endVertex;
        while (verticeActual != null) {
            rutaMasCorta.add(0, verticeActual);
            verticeActual = previos.get(verticeActual);
        }

     
        double distanciaTotal = distancias.get(endVertex);

        
        return String.join(" -> ", rutaMasCorta) + " (Distancia total: " + distanciaTotal + ")";
    }

    /**
     * Finds the unvisited vertex with the minimum distance.
     *
     * @param distancias the map of distances for each vertex
     * @param visitados  the set of visited vertices
     * @return the vertex with the minimum distance that has not been visited
     */
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

