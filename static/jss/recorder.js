// /app/static/js/recorder.js

let recognition;
let isRecording = false;
const transcriptTextElement = document.getElementById("transcript-text");
const transcriptionInput = document.getElementById("transcription-input");
const generatePdfBtn = document.getElementById("generate-pdf-btn");
const stopRecordBtn = document.getElementById("stop-record-btn");

function startRecording() {
    if (!('webkitSpeechRecognition' in window)) {
        alert('Your browser does not support speech recognition.');
        return;
    }

    recognition = new webkitSpeechRecognition();
    recognition.continuous = true;
    recognition.interimResults = true;
    recognition.lang = 'en-US';

    recognition.start();
    isRecording = true;
    stopRecordBtn.disabled = false;
    
    recognition.onresult = function (event) {
        let interimTranscript = '';
        let finalTranscript = '';
        
        for (let i = event.resultIndex; i < event.results.length; ++i) {
            if (event.results[i].isFinal) {
                finalTranscript += event.results[i][0].transcript;
            } else {
                interimTranscript += event.results[i][0].transcript;
            }
        }
        
        transcriptTextElement.innerHTML = finalTranscript + '<i>' + interimTranscript + '</i>';
        transcriptionInput.value = finalTranscript;
        generatePdfBtn.disabled = false;
    };

    recognition.onerror = function (event) {
        console.error('Speech recognition error: ', event.error);
    };
}

function stopRecording() {
    if (isRecording) {
        recognition.stop();
        isRecording = false;
        stopRecordBtn.disabled = true;
    }
}
