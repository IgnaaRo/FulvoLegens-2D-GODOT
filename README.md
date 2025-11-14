# ⚽ FulvoLegends 2D  
Videojuego 2D desarrollado en **Godot 4** como proyecto académico para la asignatura *Arquitectura y Diseño de Interfaces*.  
Incluye diseño UX/UI, análisis de usuario, arquitectura de información y una demo funcional jugable.

Autores: **Romero Ignacio – Ruiz Ignacio**  
Instituto: *IES 9-008 Manuel Belgrano*  

---

# 🎮 Demo del Juego
📹 VideoJuego (Carpeta):  
👉 [https://youtu.be/x9e9dkxObYQ](https://drive.google.com/drive/folders/1lNPQbdLwMsKV6h_mOySWyH8jH1deugTS?usp=sharing)

---

# 🚀 Características Principales del Juego
- Gameplay 2D estilo fútbol arcade.
- Controles simples y accesibles.
- Partidas rápidas y dinámicas.
- Pantalla de juego con marcador y cronómetro.
- Menú principal, ajustes y navegación integrada.
- Feedback visual y sonoro.
- Preparado para expansión a IA y multijugador futuro.

---

# 🧠 Modelo de Negocio

### **Arquetipo**
El desarrollo inicial se financia mediante donaciones.  
En su versión futura, el juego se publicará como título pago básico.

### **Misión**
Brindar una experiencia de fútbol 2D rápida, divertida y accesible.

### **Visión**
Ser uno de los juegos casuales de fútbol 2D más populares en plataformas PC y móvil.

---

# 📊 Análisis FODA

### **Fortalezas**
- Fácil de aprender  
- Partidas rápidas  
- Ideal para multijugador local  

### **Debilidades**
- Limitado inicialmente a modo local  
- Poca personalización  
- Recursos de desarrollo reducidos  

### **Oportunidades**
- Crecimiento del gaming casual  
- Implementación futura de IA (bots)  
- Adaptación a dispositivos móviles  

### **Amenazas**
- Fuerte competencia en juegos de fútbol  
- Cambios en tendencias de mercado  
- Desafíos técnicos  


<img width="606" height="376" alt="FODA" src="https://github.com/user-attachments/assets/3a64ce6a-ab3b-421d-941b-65ad7d2bd186" />

---

# 🧍 Investigación de Usuario

### **Persona**
**Hernán (21)** – Estudiante  
- Aficionado al fútbol  
- Juega en PC y consola  
- Prefiere juegos rápidos y fáciles para compartir con amigos  

**Necesidades:** diversión inmediata, controles simples  
**Frustraciones:** juegos que requieren mucho tiempo para aprender  

---

# 🧱 Arquitectura de Información

### **Componentes del Sistema**
- **Interfaz de Usuario:** menú, ajustes, pantalla de juego  
- **Motor de Juego:** reglas, tiempo, eventos  
- **Sistema de Físicas:** movimiento, colisiones  
- **IA (futuro):** comportamiento táctico  
- **Multijugador (futuro):** sincronización  
- **Gestión de Datos:** perfiles, estadísticas, configuraciones  

---

# 📘 Glosario
- **Jugador:** quien participa en la partida  
- **Partida rápida:** juego directo sin configuraciones  
- **Multijugador local:** dos jugadores en el mismo dispositivo  
- **Bot:** jugador controlado por IA  

---

# 🖼️ Mockups y Wireframes

Incluyen:  
- Menú principal

<img width="673" height="380" alt="image" src="https://github.com/user-attachments/assets/087f598c-c5e1-4320-bed6-b08f30490cd8" />


- Pantalla de ajustes

<img width="650" height="542" alt="image" src="https://github.com/user-attachments/assets/f27ef7da-9348-42d2-9dba-d9faa8efe244" />


- Campo de juego  

<img width="648" height="360" alt="image" src="https://github.com/user-attachments/assets/9942a734-bba4-428f-be39-c74407f02aa1" />



---

# 🗺️ Mapa de Navegación

Pantalla de Inicio
├─ Jugar → Campo de juego
├─ Ajustes → Sonido / Controles / Pantalla
└─ Salir
Dentro del juego:
- Pausa  
- Marcador  
- Cronómetro  
- Ajustes rápidos  


<img width="678" height="540" alt="MAPA DE NAVEGACION" src="https://github.com/user-attachments/assets/a87f12a8-2ebe-4038-9a51-2febbd018c76" />

---

# 🧩 Card Sorting (Cerrado)

### **Categorías**
- Menú Principal  
- Configuración  
- Juego  

### **Resultados**
**Menú Principal:** Jugar, Ajustes, Salir  
**Juego:** Pausa, Tiempo, Marcador, Controles  
**Configuración:** Sonido, Controles, Pantalla  

<img width="726" height="473" alt="CARDSORTING" src="https://github.com/user-attachments/assets/1779d89e-528f-4c56-9b8e-0ea2e3d624bf" />

---

# 🧠 Mapa de Empatía del Usuario

### **Inicio**
Piensa: “Quiero jugar ya.”  
Acción: Presiona *Jugar* rápidamente.

### **Durante el partido**
- Identifica marcador y cronómetro  
- Puede perder la pelota de vista ➝ futura mejora: indicador direccional  

### **Interacción**
- Controles entendibles pero pequeños  
- Sería útil un mini tutorial  

### **Ajustes**
- Le gusta poder ajustar sonido desde pausa

<img width="886" height="1192" alt="image" src="https://github.com/user-attachments/assets/926fff3c-0a01-43cf-85cc-2aeefe2c6897" />

---

# 🧪 Test de Guerrilla

**Usuarios:** Lucas (25), Sofía (22)

### Resultados:
✔ Encuentran rápido cómo jugar  
✔ El menú comunica bien que es un juego de fútbol  
**Mejoras:**  
- Cambiar “Iniciar” por *“Iniciar Juego”*  
- Evaluar si la tienda debe estar en el menú principal  

---

# ⏱️ Test de 5 Segundos

**Usuarios:** Carlos (20), Micaela (28)  

### Recuerdan:
- Cronómetro  
- Marcador  

Interpretaron correctamente el objetivo del juego.

---

# 🛠️ Tecnologías Utilizadas
- **Godot 4**  
- **GDScript**  
- **UX/UI & Arquitectura de Interfaces**  
- **Git + GitHub**  

---

# 📂 GRABACIÓN DEMO
👉 **[https://github.com/IgnaaRo/FulvoLegens-2D-ExamenParcial](https://youtu.be/PGM4qHd537g)**

---

# 📜 Licencia
Proyecto realizado con fines educativos para la asignatura *Arquitectura y Diseño de Interfaces*.
