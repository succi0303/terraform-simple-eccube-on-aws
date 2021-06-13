output "instance_public_dns" {
  value       = "${aws_instance.main.public_dns}/ec"
  description = "The dns name of the instance"
}
