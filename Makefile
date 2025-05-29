decrypt:
	gpg --decrypt vault > decrypted_vault.json

encrypt:
	gpg --symmetric --armor --output vault decrypted_vault.json && rm decrypted_vault.json
