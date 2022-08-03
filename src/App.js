import React, { useState } from 'react'
import './App.css'
import Flower from './components/Flower'
import ColorPalette from './components/ColorPalette'

const App = () => {
  const [fillColors, setFillColors] = useState(Array(22).fill('white'))
  const [currentColor, setCurrentColor] = useState('blue')

  const onFillColor = (i) => {
    let newFillColors = fillColors.slice(0)
    newFillColors[i] = currentColor
    setFillColors(newFillColors)
  }

  return (
    <div className="App">
      <div className="title">React web App</div>
      <div className= "flower">
        <Flower fillColors={fillColors} onFill={onFillColor} />
      </div>
      <ColorPalette currentColor={currentColor} changeColor={setCurrentColor}/>
      <div className="resources">
        <span>Digital Coloring book by vijay</span>
      </div>
    </div>
  )
}

export default App
