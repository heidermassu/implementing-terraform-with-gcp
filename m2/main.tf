resource "google_compute_instance" "this" {
  provider     = google
  name         = "carved-rock-instance"
  machine_type = "e2-medium"
  zone         = "us-east1-b"

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-11"
    }
  }

  network_interface {
    network = "default"
    access_config {
      // Left blank to assign public IP
    }
  }

  #metadata = {
  #  ssh-keys = "${var.username}:${file("~/.ssh/id_rsa.pub")}"
  #}

 metadata = {
  ssh-keys = "${file("C:/Users/heide/.ssh/google_compute_engine.pub")}"
 }



  metadata_startup_script = "sudo apt-get update; echo 'Hello World!' >> /home/startup"
}

