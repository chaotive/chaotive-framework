class SAMPLE.STATES.Menu extends Phaser.State

  constructor: (@game) ->

  preload: () -> SAMPLE.GAME.Util.preload(@game)

  create: () ->
    @game.add.sprite(0, 0, 'bg1')
    @startButton = @game.add.sprite(230, 90, 'startbutton')
    @startButton.inputEnabled = true
    @startButton.events.onInputDown.add(@startAction,@)

  startAction: () ->
    # action binded to startButton
    @game.state.start('gameover')
