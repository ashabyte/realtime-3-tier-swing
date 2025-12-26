package api;

import java.net.URI;
import java.net.http.HttpClient;
import java.net.http.HttpRequest;
import java.net.http.HttpResponse;
import java.util.ArrayList;
import java.util.List;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import com.google.gson.reflect.TypeToken;

import model.Idol;

public class IdolApiClient {
    private static final String BASE_URL = "http://localhost/application-tier-php/public";
    
    private final HttpClient client = HttpClient.newHttpClient();
    private final Gson gson;
    
    public IdolApiClient() {
        this.gson = new GsonBuilder()
                .setDateFormat("yyyy-MM-dd")
                .create();
    }

    public List<Idol> findAll() throws Exception {
        String url = BASE_URL + "/idol";
        System.out.println("📡 GET: " + url);
        
        HttpRequest request = HttpRequest.newBuilder()
                .uri(URI.create(url))
                .GET()
                .build();
        
        HttpResponse<String> response = client.send(request, HttpResponse.BodyHandlers.ofString());
        String body = response.body().trim();
        
        System.out.println("Status: " + response.statusCode());
        System.out.println("Response (first 300 chars):");
        System.out.println(body.substring(0, Math.min(300, body.length())));
        
        if (!body.startsWith("{") && !body.startsWith("[")) {
            throw new RuntimeException("Invalid JSON response from server");
        }
        
        ApiResponse<List<Idol>> apiResp = gson.fromJson(body,
                new TypeToken<ApiResponse<List<Idol>>>() {}.getType());
        
        if (apiResp == null || !apiResp.success) {
            throw new RuntimeException("Server error: " + (apiResp != null ? apiResp.message : "Unknown error"));
        }
        
        System.out.println("✅ Loaded " + (apiResp.data != null ? apiResp.data.size() : 0) + " records");
        return apiResp.data != null ? apiResp.data : new ArrayList<>();
    }

    // TAMBAH INI - METHOD CREATE YANG HILANG
    public void create(Idol i) throws Exception {
        String url = BASE_URL + "/idol";
        String json = gson.toJson(i);
        System.out.println("📤 CREATE URL: " + url);
        System.out.println("Sending JSON: " + json);
        
        HttpRequest request = HttpRequest.newBuilder()
                .uri(URI.create(url))
                .header("Content-Type", "application/json")
                .POST(HttpRequest.BodyPublishers.ofString(json))
                .build();
        
        HttpResponse<String> response = client.send(request, HttpResponse.BodyHandlers.ofString());
        System.out.println("📥 Response: " + response.statusCode() + " - " + response.body());
        
        handleResponse(response);
    }

    public void update(Idol i) throws Exception {
        String url = BASE_URL + "/idol/" + i.getIdIdol();
        String json = gson.toJson(i);
        System.out.println("🔄 UPDATE URL: " + url);
        System.out.println("Sending JSON: " + json);
        
        HttpRequest request = HttpRequest.newBuilder()
                .uri(URI.create(url))
                .header("Content-Type", "application/json")
                .PUT(HttpRequest.BodyPublishers.ofString(json))
                .build();
        
        HttpResponse<String> response = client.send(request, HttpResponse.BodyHandlers.ofString());
        System.out.println("📥 Response: " + response.statusCode() + " - " + response.body());
        
        handleResponse(response);
    }

    public void delete(int id) throws Exception {
        String url = BASE_URL + "/idol/" + id;
        System.out.println("🗑️ DELETE URL: " + url);
        
        HttpRequest request = HttpRequest.newBuilder()
                .uri(URI.create(url))
                .DELETE()
                .build();
        
        HttpResponse<String> response = client.send(request, HttpResponse.BodyHandlers.ofString());
        System.out.println("📥 Response: " + response.statusCode() + " - " + response.body());
        
        handleResponse(response);
    }

    private static class ApiResponse<T> {
        boolean success;
        T data;
        String message;
    }

    private void handleResponse(HttpResponse<String> response) throws Exception {
        if (response.statusCode() < 200 || response.statusCode() >= 300) {
            throw new RuntimeException("HTTP " + response.statusCode() + ": " + response.body());
        }
        
        ApiResponse<?> apiResp = gson.fromJson(response.body(), ApiResponse.class);
        
        if (apiResp == null) {
            throw new Exception("Invalid response from server");
        }
        
        if (!apiResp.success) {
            throw new Exception(apiResp.message != null ? apiResp.message : "Unknown error");
        }
    }
}