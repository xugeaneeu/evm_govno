#include <iostream>
#include <libusb.h>
#include <stdio.h>

using namespace std;

void print_device_info(libusb_device *device);

int main() {
  libusb_device **devices;
  libusb_context *ctx = nullptr;
  int result;
  ssize_t device_count;
  result = libusb_init(&ctx);
  
  if (result < 0) {
    cerr << "Error initializing libusb: " << result << endl;
    return 1;
  }
  
  device_count = libusb_get_device_list(ctx, &devices);
  if (device_count < 0) {
    cerr << "Error while retrieving the device list." << endl;
    return 1;
  }
  cout << "Number of connected devices: " << device_count << endl;
  
  for (ssize_t i = 0; i < device_count; i++) {
    print_device_info(devices[i]);
  }
  
  libusb_free_device_list(devices, 1);
  libusb_exit(ctx);
  return 0;
}

void print_device_info(libusb_device *device) {
  libusb_device_descriptor desc;
  libusb_config_descriptor *config;
  const libusb_interface *inter;
  const libusb_interface_descriptor *interdesc;
  
  int result = libusb_get_device_descriptor(device, &desc);
  if (result < 0) {
    cerr << "Error receiving a device descriptor: " << result << endl;
    return;
  }
  
  libusb_get_config_descriptor(device, 0, &config);
  inter = &config->interface[0];
  interdesc = &inter->altsetting[0];
  cout << "Device class code: " << static_cast<int>(desc.bDeviceClass) << endl;
  cout << "Manufacturer ID: " << desc.idVendor << endl;
  libusb_device_handle *handle;
  result = libusb_open(device, &handle);
  if (result == 0) {
    unsigned char buffer[33];
    if (desc.iSerialNumber >= 0) { //desc.iSerialNumber > 0
      libusb_get_string_descriptor_ascii(
          handle, desc.iSerialNumber,
          buffer, sizeof(buffer) );
      buffer[32] = '\0';
      cout << "Serial number: " << buffer << endl;
    }
    if (desc.iProduct >= 0) {//desc.iProduct > 0
      libusb_get_string_descriptor_ascii(
          handle, desc.iProduct, buffer,
          sizeof(buffer));
      cout << "Product Name: " << buffer << endl;
    }
    if (desc.iManufacturer >= 0) {//desc.iManufacturer > 0
      libusb_get_string_descriptor_ascii(
          handle, desc.iManufacturer,
          buffer, sizeof(buffer));
      cout << "Manufacturer’s name: " << buffer << endl;
    }
    cout << "Device interface class: "
         << static_cast<int>(interdesc->bInterfaceClass) << endl;
    libusb_close(handle);
  }
  cout << "--------------------------------" << endl;
}