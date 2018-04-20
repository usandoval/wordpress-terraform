# Add record set/s to domain
resource "aws_route53_record" "www" {
  zone_id = "Z1DZELSU4ROKDZ"
  name    = "davidjeddy.me"
  type    = "A"
  ttl     = "60"
  records = ["${aws_eip.wordpress_eip.public_ip}"]
}