const { app, BrowserWindow } = require('electron');
const SVG = require('svg.js');

// Créer une fenêtre Electron
const win = new BrowserWindow({
  width: 800,
  height: 600,
  webPreferences: {
    nodeIntegration: true
  }
});

// Créer un élément SVG
const draw = SVG(win.webContents).size(800, 600);

// Ajouter un rectangle
const rect = draw.rect(100, 100).fill('#f00');

// Événement de drag-and-drop
rect.draggable().on('drop', (e) => {
  // Met à jour la position du rectangle
  rect.move(e.detail.x, e.detail.y);
});