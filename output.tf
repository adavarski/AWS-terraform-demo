output "instance_ips" {
  value = [aws_instance.demo-tf.*.public_ip]
}


