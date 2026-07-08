// Live Commerce Events API

export function createLiveEvent(data) {
  return {
    id: Date.now(),
    title: data.title,
    startDate: data.startDate,
    products: data.products || [],
    status: 'scheduled',
    viewers: 0,
    chatMessages: [],
    createdAt: new Date()
  };
}

export function startLiveEvent(eventId) {
  return {
    eventId,
    status: 'live',
    startedAt: new Date(),
    message: '🎥 Live event started!'
  };
}

export function endLiveEvent(eventId) {
  return {
    eventId,
    status: 'completed',
    endedAt: new Date(),
    message: '✨ Thank you for watching!'
  };
}

export function addChatMessage(eventId, user, message) {
  return {
    eventId,
    user,
    message,
    timestamp: new Date(),
    status: 'sent'
  };
}

export function aiHostResponse(question) {
  const responses = {
    'size': '📏 This dress comes in sizes XS to XXL. What is your usual size?',
    'price': '💰 This luxury collection ranges from $200 to $2000 per item.',
    'match': '✨ This pairs perfectly with our gold accessories collection!',
    'availability': '🏪 This item is currently in stock and ready to ship!'
  };
  
  return responses[question.toLowerCase()] || '✨ Let me help you with that!';
}