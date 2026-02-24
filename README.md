# 🪄 Spell Factory
---
## 📰 Resumo
Spell Factory é um sistema de criação modular de feitiços que permite ao jogador construir habilidades únicas a partir de componentes combináveis. Cada módulo funciona individualmente, mas também interage com outros, possibilitando novas formas de gameplay e alta customização de magia. O projeto visa uma boa escalabilidade e estrutura, por meio de uma arquitetura orientada a componentes.
---
## 🔎 Status do projeto
Em desenvolvimento

---
## 🌟 Funcionalidades
* ↗️ Progressão do jogador
    * Aumentar atributos do jogador
    * Alteração dos parâmetros dos feitiços
* 📜 Sisema de feitiço
    * Nomear Feitiços
    * Utilização dos módulos independentes
    * Combinação de módulos para a criação de novos feitiços
* 💾 Sistema de save
    * Criar, excluir, salvar e copiar saves

---
## 🧩 Módulos disponíveis (v1.0.0)
### Módulos previstos para serem adicionados até a primeira versão estável do projeto:

* **scr_mod_fire:** aplicar dano contínuo numa área pequena ao redor do conjurador
  
* **scr_mod_lightning:** paralizar os alvos dentro de uma área

* **scr_mod_wind:** corrente de ar. alvos que vão contra corrente se movem mais devagar

* **scr_mod_projectile:** envia um projétil rápido na direção do cursor

* **scr_mod_dash:** desloca o obj_player para a direção que está se movendo

* **scr_mod_push:** empurrar alvo até colidir com objeto solido

* **scr_mod_pulse:** emitir uma onda radial a partir do conjurador, revelando entidades

* **scr_mod_wall:** criar uma instância sólida na direção do cursor

* **scr_mod_ring:** criar três (3) instâncias que orbitam o conjurador
    
---
## 🏗️ Arquitetura
Responsabilidades
        
    par_entity — classe de todos os objetos com vida e mana
    
    obj_player — movimento, ataque, criar instancia do obj_spell_inst
    
    obj_hud — apresentar os parâmetros do jogador

    obj_create_spell — armazenar os módulos dos feitiços
    
    obj_spell_inst — executar o feitiço

    scr_mod_* — módulos que ditam o comportamento do feitiço

---
## 🕹️ Controles
⌨️ teclado  
    
    Movimentação:      
    
    W — Mover para cima

    A — Mover para esquerda

    S — Mover para baixo

    D — Mover para direita


    Sistema:   
   
    Esc — pausar

    Shift — mudar magia equipada
  
    E: abre e fecha inventário

🖱️ mouse  

    Esquerdo: lançar magia
    
    Posição do cursor: define direção ou alvo da magia
     
---
## 🔌 Tecnologias
Engine:  

    GameMaker Studio 2 - versão 2024.14.2.213
    
Linguagem: 

    GML (GameMaker Language)  
    
Paradigmas:  

     Separação de responsábilidade
     
     Sistema modular orientado a componentes
     
     Programação orientado a eventos
     
     Estrutura orientada a dados
---
## 📖 Roteiro

**Curto prazo**

* Sistema de vida e mana
   
* Ciclo de morte e restart
    
* Inimigo funcional
    
* Refatoração do sistema dos feitiços

* Conjunto inicial de módulos:
    * scr_mod_projectlie
    * scr_mod_fire
    * scr_mod_wall
    * scr_dash

**Médio prazo**

* Sistema de charge de feitços baseado em tempo

* Salvamento dos feitiços
   
* Criação, exclusão e atualização de saves
    
* Chefe funcional

**Longo prazo**

* Adiconar gamepad como opção de controle  
    
* Trilha sonora
    
* Melhorar sprites e animações

* Criar o restante dos módulos v1.0.0

 
---
## 📷 Demonstração

---
## 🖊️ Autor
**Gustavo Simas Mourão**  
**Estudante de Ciência da Computação**  
