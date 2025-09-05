resource "tls_private_key" "generated_key" {
  algorithm = "RSA"
}

resource "local_file" "private_key" {
  content  = tls_private_key.generated_key.private_key_pem
  filename = "private_key.pem"
}
