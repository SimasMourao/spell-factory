# 🧙🏭 Spell Factory

## 📰 Resumo
Spell Factory é um sistema de criação modular de feitiços que permite ao jogador construir habilidades únicas a partir de componentes combináveis. Cada módulo funciona individualmente, mas também interage com outros, possibilitando novas formas de gameplay e alta customização de magia. O projeto visa boa escalabilidade e organização, por meio de uma arquitetura orientada a componentes.  
---
## 🔎 Status do projeto

⌛ Em desenvolvimento  

---
## 🌟 Funcionalidades

#### ↗️ Progressão do jogador

* Aumentar atributos do jogador

* Alterar os parâmetros dos feitiços  

#### 📜 Sistema de feitiços

* Nomear feitiços

* Utilizar módulos independentes

* Combinar módulos para criar novos feitiços

#### 💾 Sistema de save

* Criar, excluir, salvar e copiar saves
  
---
## 🧩 Módulos disponíveis (v1.0.0)
**Módulos previstos para serem adicionados até a primeira versão estável do projeto:**

* scr_mod_fire: aplicar dano contínuo em uma área pequena ao redor do conjurador

* scr_mod_lightning: paralisar os alvos dentro de uma área

* scr_mod_wind: criar corrente de ar; fazer com que alvos que se movem contra a corrente se movam mais devagar

* scr_mod_projectile: enviar projétil rápido na direção do cursor

* scr_mod_dash: deslocar o obj_player na direção em que está se movendo

* scr_mod_push: empurrar alvo até colidir com objeto sólido

* scr_mod_pulse: emitir onda radial a partir do conjurador

* scr_mod_wall: criar instância sólida na direção do cursor

* scr_mod_ring: adicionar instâncias que orbitam o conjurador  
---
## 🏗️ Arquitetura

### Responsabilidades

      par_entity — representar a classe base de todos os objetos com vida e mana
      
      obj_player — controlar estados do jogador
      
      obj_hud — apresentar os atributos do jogador  
      
      obj_spell_inst — executar o feitiço
      
      scr_mod_* — modificar estados, adcionar comportamento e registrar eventos
      
      scr_create_spell — armazenar os módulos dos feitiços e criar instânicas do obj_spell_inst

### Fluxogramas
**Fluxogramas baseadod em diagramas de atividade (UML), representando o fluxo de execução do sistema de feitiços**
#### Fluxo de execução dos módulos:
<img width="961" height="371" alt="fluxograma_modulos" src="https://github.com/user-attachments/assets/1abee690-e334-4f95-9c40-41da9f3c75ec" />
#### Fluxo de aplicação de efeitos:
<img width="989" height="319" alt="fluxograma_efeitos" src="https://github.com/user-attachments/assets/5b23e0ee-06b7-4988-a7c2-58ebb5a0f907" />
#### Fluxo de ciclo de vida dos feitiços:
![fluxograma_feiticos](https://github.com/user-attachments/assets/c629fd14-6dee-4409-972f-ca7337416c8d)


  
---
## 🕹️ Controles

#### ⌨️ teclado

      Movimentação:      

            W — mover para cima
      
            A — mover para a esquerda
      
            S — mover para baixo
      
            D — mover para a direita


      Sistema:   
      
            Esc — pausar
      
            Shift — mudar magia equipada
      
            E — abrir e fechar inventário

#### 🖱️ mouse

      Botão esquerdo — lançar magia

      Posição do cursor — definir direção ou alvo da magia
  
 ---
## 🔌 Tecnologias

#### Engine:

  * GameMaker Studio 2 - versão 2024.14.2.213

#### Linguagem:

  * GML (GameMaker Language)  

### Ferramentas:

  * Aseprite - criação de sprites e animação;
  * Draw.io - modelagem de diagramas e arquitetura    

#### Paradigmas:
   
  * Separação de responsabilidade

  * Sistema modular orientado a componentes

  * Programação orientada a eventos

  * Estrutura orientada a dados
  
 ---
## 📖 Roteiro

#### Curto prazo

* Implementar sistema de vida e mana

* Implementar ciclo de morte e reinício

* Criar inimigo funcional

* Refatorar o sistema de feitiços

* Conjunto inicial de módulos:

   * scr_mod_projectile

   * scr_mod_fire

   * scr_mod_wall

   * scr_mod_dash

#### Médio prazo

* Implementar sistema de carregamento de feitiços baseado em tempo

* Implementar salvamento dos feitiços

* Permitir criação, exclusão e atualização de saves

* Criar chefe funcional

#### Longo prazo

* Adicionar gamepad como opção de controle

* Implementar trilha sonora

* Melhorar sprites e animações

* Criar o restante dos módulos da v1.0.0
  
---
## 📷 Demonstração
  
---
## 🖊️ Autor

**Gustavo Simas Mourão**  
**Estudante de Ciência da Computação**
