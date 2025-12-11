package com.ipn.mx.ejerciciorender.controller;

import com.ipn.mx.ejerciciorender.model.Usuario;
import org.springframework.web.bind.annotation.*;

@RestController
@RequestMapping("/api")
public class SaludoController {

    @GetMapping("/saludo")
    public String saludo() {
        return "Hola, Render está funcionando correctamente.";
    }

    @GetMapping("/saludo/{nombre}")
    public String saludoPersonalizado(@PathVariable String nombre) {
        return "Hola " + nombre + ", tu API está activa en Render.";
    }

    @PostMapping("/usuario")
    public Usuario crearUsuario(@RequestBody Usuario usuario) {
        usuario.setId(1);
        return usuario;
    }
}
