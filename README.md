# Planning versus Meteoro ✈️🌠

Um jogo de nave clássico desenvolvido em Lua usando o framework LÖVE2D. Controle o avião 14-Bis e destrua meteoros para salvar o planeta!

## 🎮 Sobre o Jogo

Em "Planning versus Meteoro", você pilota o histórico avião 14-Bis em uma batalha épica contra uma chuva de meteoros. Desvie dos meteoros e atire para destruí-los antes que colidam com sua nave!

### 🎯 Objetivo
- **Destrua 100 meteoros** para vencer o jogo
- **Sobreviva** evitando colisões com os meteoros
- **Desafie-se** com meteoros que se movem em velocidades e direções diferentes

## 🚀 Características

- **Gráficos retrô** com sprites pixelart
- **Física realista** de colisão
- **Sistema de pontuação** progressivo
- **Efeitos sonoros** imersivos
- **Múltiplas condições de vitória/derrota**
- **Controles responsivos** e intuitivos

## 🎵 Recursos de Áudio

- **Música ambiente** durante o gameplay
- **Efeito de disparo** ao atirar
- **Som de explosão** quando a nave é destruída
- **Música de game over** na derrota
- **Música de vitória** ao completar o objetivo

## 🎲 Mecânicas do Jogo

### Nave (14-Bis)
- **Dimensões**: 64x64 pixels
- **Movimentação**: 8 direções (WASD/setas)
- **Armamento**: Tiros ilimitados
- **Vida**: 1 hit (collision = game over)

### Meteoros
- **Spawn**: Até 20 meteoros simultâneos
- **Velocidade**: Aleatória (1-3 pixels/frame)
- **Movimento**: Vertical com deslocamento horizontal aleatório
- **Dimensões**: 50x44 pixels
- **Pontuação**: 1 ponto por meteoro destruído

### Sistema de Tiros
- **Velocidade**: 1 pixel/frame para cima
- **Dimensões**: 16x16 pixels
- **Auto-destruição**: Remove tiros que saem da tela
- **Colisão**: Destroi meteoros ao contato

## 🎮 Controles

| Tecla | Ação |
|-------|------|
| `W` ou `↑` | Mover para cima |
| `S` ou `↓` | Mover para baixo |
| `A` ou `←` | Mover para esquerda |
| `D` ou `→` | Mover para direita |
| `Espaço` | Atirar |
| `ESC` | Sair do jogo |

## 🏆 Condições de Vitória/Derrota

### 🎉 Vitória
- Destruir **100 meteoros** sem ser atingido
- Música de vitória toca automaticamente
- Tela de "Vencedor" é exibida

### 💥 Derrota
- Colidir com qualquer meteoro
- Nave explode com efeito visual
- Música muda para tema de game over
- Tela de "Game Over" é exibida

## 🛠️ Instalação e Execução

### Pré-requisitos
- **LÖVE2D** (Love2D) versão 11.0 ou superior
- Sistema operacional: Windows, macOS ou Linux

### Passos para Instalação

1. **Baixe e instale o LÖVE2D**
   ```bash
   # Windows: baixe de https://love2d.org/
   # macOS: brew install love
   # Ubuntu/Debian: sudo apt install love
   ```

2. **Clone ou baixe o projeto**
   ```bash
   git clone <url-do-repositorio>
   cd planning-versus-meteoro
   ```

3. **Execute o jogo**
   ```bash
   # Método 1: Arrastar a pasta do jogo para o executável do LÖVE
   # Método 2: Linha de comando
   love .
   
   # Ou se estiver na pasta do projeto
   love main.lua
   ```

## 📁 Estrutura do Projeto

```
planning-versus-meteoro/
├── main.lua                  # Código principal do jogo
└── assets/
    ├── 14bis.png            # Sprite do avião
    ├── background.png       # Fundo do jogo
    ├── meteoro.png          # Sprite do meteoro
    ├── tiro.png             # Sprite do tiro
    ├── explosao_nave.png    # Sprite da explosão
    ├── gameover.png         # Imagem de game over
    ├── vencedor.png         # Imagem de vitória
    └── audios/
        ├── ambiente.wav     # Música ambiente
        ├── disparo.wav      # Som do tiro
        ├── destruicao.wav   # Som da explosão
        ├── game_over.wav    # Música de derrota
        └── winner.wav       # Música de vitória
```

## 🎨 Assets Necessários

### Imagens (PNG)
- `14bis.png` (64x64) - Sprite do avião
- `explosao_nave.png` (55x63) - Explosão da nave
- `meteoro.png` (50x44) - Meteoro
- `tiro.png` (16x16) - Projétil
- `background.png` (320x480) - Fundo
- `gameover.png` - Tela de game over
- `vencedor.png` - Tela de vitória

### Áudios (WAV)
- `ambiente.wav` - Loop de música ambiente
- `disparo.wav` - Efeito sonoro do tiro
- `destruicao.wav` - Som da explosão
- `game_over.wav` - Música de derrota
- `winner.wav` - Música de vitória

## 🔧 Configurações Técnicas

### Constantes do Jogo
```lua
LARG_TELA = 320           # Largura da tela
ALT_TELA = 480            # Altura da tela
MAX_METEOROS = 20         # Máximo de meteoros simultâneos
PONTUACAO_MAX = 100       # Pontuação para vencer
```

### Performance
- **Taxa de quadros**: 60 FPS (padrão LÖVE2D)
- **Resolução**: 320x480 pixels
- **Otimização**: Remoção automática de objetos fora da tela

## 🎯 Estratégias de Jogo

### Dicas para Iniciantes
1. **Mantenha-se em movimento** - Meteoros aparecem aleatoriamente
2. **Atire constantemente** - Tiros são ilimitados
3. **Use as bordas** - Fique nas laterais para ter mais espaço de manobra
4. **Observe padrões** - Meteoros têm velocidades diferentes

### Dicas Avançadas
1. **Movimento diagonal** - Combine teclas para movimento mais rápido
2. **Tiro antecipado** - Mire onde o meteoro estará, não onde está
3. **Gestão de risco** - Balance entre ficar seguro e marcar pontos
4. **Controle de área** - Limpe meteoros de uma área antes de se mover

## 🐛 Troubleshooting

### Problemas Comuns

**O jogo não inicia**
- Verifique se o LÖVE2D está instalado corretamente
- Certifique-se de que todos os arquivos de assets existem

**Sem áudio**
- Verifique se os arquivos .wav estão na pasta `assets/audios/`
- Teste o áudio do sistema

**Gráficos não aparecem**
- Confirme que todas as imagens PNG estão na pasta `assets/`
- Verifique as dimensões dos sprites

**Performance baixa**
- Feche outros programas
- Reduza a quantidade máxima de meteoros no código

## 🚀 Possíveis Melhorias

### Funcionalidades Futuras
- [ ] Sistema de vidas múltiplas
- [ ] Power-ups (tiro duplo, escudo, etc.)
- [ ] Níveis de dificuldade
- [ ] Ranking de pontuações
- [ ] Efeitos visuais aprimorados
- [ ] Meteoros com diferentes tamanhos
- [ ] Boss battles
- [ ] Multiplayer local

### Melhorias Técnicas
- [ ] Menu principal
- [ ] Tela de configurações
- [ ] Save system
- [ ] Resolução adaptável
- [ ] Suporte a joystick
- [ ] Partículas de explosão

## 🤝 Contribuição

Contribuições são bem-vindas! Se você quiser melhorar o jogo:

1. Faça um fork do projeto
2. Crie uma branch para sua feature (`git checkout -b feature/NovaFuncionalidade`)
3. Commit suas mudanças (`git commit -m 'Adiciona nova funcionalidade'`)
4. Push para a branch (`git push origin feature/NovaFuncionalidade`)
5. Abra um Pull Request

## 📄 Licença

Este projeto está sob a licença MIT. Veja o arquivo `LICENSE` para mais detalhes.

## 🎖️ Créditos

- **Engine**: LÖVE2D (Love2D)
- **Linguagem**: Lua
- **Conceito**: Jogo clássico de nave espacial
- **Arte**: Sprites pixelart retrô

## 💖 Support

If you found this library helpful, please consider:

- ⭐ Giving it a star on GitHub
- 📝 Reporting issues or requesting features
- 💰 Supporting via Pix: rodrigo@hangell.org

## 👨‍💻 Author

<div align="center">

![Rodrigo Rangel](https://avatars.githubusercontent.com/u/53544561?v=4)

**Rodrigo Rangel**

[![Website](https://img.shields.io/badge/website-000000?style=for-the-badge&logo=About.me&logoColor=white)](https://hangell.org)
[![Google Play](https://img.shields.io/badge/Google_Play-414141?style=for-the-badge&logo=google-play&logoColor=white)](https://play.google.com/store/apps/dev?id=5606456325281613718)
[![YouTube](https://img.shields.io/badge/YouTube-FF0000?style=for-the-badge&logo=youtube&logoColor=white)](https://www.youtube.com/channel/UC8_zG7RFM2aMhI-p-6zmixw)
[![Facebook](https://img.shields.io/badge/Facebook-1877F2?style=for-the-badge&logo=facebook&logoColor=white)](https://www.facebook.com/hangell.org)
[![LinkedIn](https://img.shields.io/badge/-LinkedIn-%230077B5?style=for-the-badge&logo=linkedin&logoColor=white)](https://www.linkedin.com/in/rodrigo-rangel-a80810170)

</div>

---

<p align="center">
  Made with ❤️ for the developer community
</p>