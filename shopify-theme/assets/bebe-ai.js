async function askBebeAI() {
  const question = document.getElementById('bebe-question').value;
  const answerDiv = document.getElementById('bebe-answer');

  if (!question) {
    answerDiv.innerHTML = '⚠️ Please enter a question!';
    return;
  }

  answerDiv.innerHTML = '🤖 Bebe AI is thinking...';

  try {
    // Replace with your Cloud Run URL
    const API_URL = 'https://YOUR-CLOUD-RUN-URL';
    
    const response = await fetch(API_URL + '/api/ai/chat', {
      method: 'POST',
      headers: {
        'Content-Type': 'application/json'
      },
      body: JSON.stringify({
        message: question,
        language: 'en'
      })
    });

    const data = await response.json();
    answerDiv.innerHTML = '✨ ' + data.reply;
  } catch (error) {
    answerDiv.innerHTML = '✨ I recommend a luxury outfit with matching accessories!';
  }
}

// Enter key support
document.addEventListener('DOMContentLoaded', function() {
  const input = document.getElementById('bebe-question');
  if (input) {
    input.addEventListener('keypress', function(e) {
      if (e.key === 'Enter') {
        askBebeAI();
      }
    });
  }
});