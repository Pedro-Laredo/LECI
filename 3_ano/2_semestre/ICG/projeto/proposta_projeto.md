# Proposta de Projeto – Introdução à Computação Gráfica 

**Aluno:** Pedro Leão Laredo de Sousa  
**Título:** Editor de Cenas 3D Interativo



## Descrição

O projeto consiste no desenvolvimento de um **Editor de Cenas 3D interativo** utilizando a biblioteca Three.js. A aplicação permite ao utilizador criar, manipular e personalizar cenas tridimensionais através de uma interface web intuitiva.

## Funcionalidades Principais

### Criação de Objetos
- Formas Geométricas Primitivas : cubo, esfera, cone, torus, cilindro e plano
- Fontes de luz: Point Light, Spot Light e Directional Light

### Manipulação de Objetos
- Transformações: translação, rotação e escala (com atalhos de teclado W/E/R)
- Seleção por clique e lista de objetos na interface

### Materiais e Texturas
- Ajuste de cor, metalness, roughness e opacidade
- Aplicação de texturas com controlo de repetição (tiling)
- Modo wireframe

### Iluminação e Sombras
- Sombras em tempo real 
- Controlo de intensidade, cor, distância e ângulo das luzes
- Iluminação ambiente e hemisférica

### Ambiente Procedural
- Terreno com relevo suave gerado proceduralmente
- Vegetação: árvores, arbustos, rochas e flores
- Céu com shader de gradiente e nuvens animadas
- Animação de vento na vegetação
- Nevoeiro exponencial (fog)

### Navegação
- Controlos orbitais com damping
- Opção de ativar o modo de primeira pessoa com pointer lock
- Terceira pessoa
- Navegação por teclas direcionais

### Persistência
- Guardar e carregar cenas em formato JSON
- Preservação de texturas (base64)

## Tecnologias

- **Three.js** r164 (WebGL)
- HTML5 / CSS3 / JavaScript (ES Modules)



