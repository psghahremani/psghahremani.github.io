decrypt:
	gpg --decrypt vault > decrypted_vault.json

encrypt:
	jq -S . decrypted_vault.json > sorted_decrypted_vault.json && \
	mv sorted_decrypted_vault.json decrypted_vault.json && \
	gpg --symmetric --armor --output vault decrypted_vault.json && \
	rm decrypted_vault.json
