FROM rasa/rasa_nlu

RUN pip install rasa_core

COPY examples/ /app/examples/
COPY run-rasa-core.sh /app/examples/moodbot/

RUN chmod +x /app/examples/moodbot/run-rasa-core.sh