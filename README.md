# Spell Factory
Spell Factory é um sistema de criação modular de feitiços que permite ao jogador construir habilidades únicas a partir de componentes combináveis. Cada módulo funciona individualmente, mas também interage com outros, possibilitando novas formas de gameplay e alta customização de magia.

---
## 📰 Resumo

---
## 🔎 Status do projeto
Em desenvolvimento

---
## 🌟 Funcionalidades
--
---
## 🏗️ Arquitetura
### Responsabilidades
    obj_create_spell — armazena os módulos dos feitiços
    obj_spell_inst — executa o feitiço
    par_entity — classe de todos os objetos com vida e mana
    obj_player — movimento, ataque, criar instancia do obj_spell_inst
    obj_hud — apresentar os parâmetros do jogador
    
### Padrão utilizado

---
## 🕹️ Controles
### ⌨️ teclado  
  #### Movimentação:      
    W — Mover para cima

    A — Mover para esquerda

    S — Mover para baixo

    D — Mover para direita

  #### Sistema:   
    Esc — pausar

    Shift — mudar magia equipada
  
    E: abre e fecha inventário

  #### 🖱️ mouse  
    Esquerdo: lançar magia
    
    Posição do cursor: define direção ou alvo da magia
     
---
## 🔌 Tecnologias
### Engine:  
    GameMaker Studio 2 - versão 2024.14.2.213
    
### Linguagem: 
    GML (GameMaker Language)  
    
### Paradigmas:  
    * Separação de responsábilidade
    * Sistema modular orientado a componentes
    * Programação orientado a eventos
    * Estrutura orientada a dados
---
## 📖 Roteiro

### Curto prazo
    Sistema de vida e mana
    Ciclo de morte e restart
    Inimigo funcional
    Refatoração do sistema dos feitiços

### Médio prazo
    Salvamento dos feitiços
    Criação, exclusão e atualização de saves
    Chefe funcional

### Longo prazo
    Adiconar gamepad como opção de controle  
    Trilha sonora
    Melhorar sprites e animações
---
## 📷 Demonstração

---
## 🖊️ Autor
**Gustavo Simas Mourão**  
**Estudante de Ciência da Computação**  
