output "nexus_server_url" {
    value = join ("", ["http://", aws_instance.nexus_instance.public_dns, ":", "8081"])
}

output "ssh_connection" {
    value = join ("", ["ssh -i nexus_key_pair.pem ec2-user@", aws_instance.nexus_instance.public_dns])
}

output "nexus_admin_password" {
    value = "/home/ec2-user/nexus/sonatype-work/nexus3/admin.password"
}
