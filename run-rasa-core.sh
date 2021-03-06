python -m rasa_nlu.train -c nlu_model_config.json --fixed_model_name current

python -m rasa_core.train -s data/stories.md -d domain.yml -o models/dialogue --epochs 300

python -m rasa_core.server -d models/dialogue -u models/nlu/default/current -o out.log