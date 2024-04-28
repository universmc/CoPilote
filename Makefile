# Liste des fichiers Markdown à créer
MD_FILES := cours-frontend-html.md cours-frontend-css.md cours-frontend-sass.md cours-frontend-ascci.md cours-frontend-javascript.md cours-frontend-react.md cours-backend-python.md cours-backend-sql.md cours-backend-php.md cours-gpt.md cours-tensorflow.md cours-pytorch.md cours-backend-swagger.md cours-backend-json.md cours-frontend-svg.md

# Règle par défaut pour créer tous les fichiers Markdown
all: $(MD_FILES)

# Règle pour créer chaque fichier Markdown
$(MD_FILES):
	touch $@

# Nettoyer tous les fichiers Markdown créés
clean:
	rm -f $(MD_FILES)
