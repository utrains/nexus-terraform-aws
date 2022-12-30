output "nexus_server_url" {
    value = join ("", ["http://", aws_instance.nexus_instance.public_dns, ":", "8081"])
}

output "nexus_server_public_ip" {
    value = aws_instance.nexus_instance.public_ip
}

output "nexus_admin_password" {
    value = "/home/ec2-user/nexus/sonatype-work/nexus3/admin.password"
}