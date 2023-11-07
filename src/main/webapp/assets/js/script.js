// Função para mostrar o pop-up
function openPopup() {
  document.querySelector('.popup').style.display = 'block';
}

// Função para fechar o pop-up
function closePopup() {
  document.querySelector('.popup').style.display = 'none';
}

// Exibir o pop-up ao carregar a página (você pode chamar openPopup() quando quiser exibi-lo)
window.onload = openPopup;
