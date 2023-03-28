resource "google_compute_firewall" "meg-testa" {
  name    = "meg-test-allow-rdp"
  network = "meg-test"
  allow {
    protocol = "tcp"
  }
  }

resource "google_compute_firewall" "meg-testb" {
  name    = "meg-test-allow-icmp"
  network = "meg-test"
  allow {
    protocol = "icmp"
  }
  }

resource "google_compute_firewall" "meg-testc" {
  name    = "meg-test-allow-custom"
  network = "meg-test"
  allow {
    protocol = "all"
  }
  }
  
resource "google_compute_firewall" "meg-testd" {
  name    = "meg-test-allow-ssh"
  network = "meg-test"
  allow {
    protocol = "tcp"
  }
  }
