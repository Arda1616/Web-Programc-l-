CREATE TABLE Users (
  user_id INTEGER PRIMARY KEY,
  username VARCHAR(50) NOT NULL,
  password_hash VARCHAR(255) NOT NULL,
  email VARCHAR(100) NOT NULL,
  created_at DATETIME NOT NULL
);

CREATE TABLE Devices (
  device_id INTEGER PRIMARY KEY,
  user_id INTEGER NOT NULL REFERENCES Users(user_id),
  device_name VARCHAR(50) NOT NULL,
  mac_address VARCHAR(17) NOT NULL,
  esp32_firmware_version VARCHAR(20) NOT NULL,
  status VARCHAR(20) NOT NULL
);

CREATE TABLE TelemetryData (
  log_id INTEGER PRIMARY KEY,
  device_id INTEGER NOT NULL REFERENCES Devices(device_id),
  voltage FLOAT NOT NULL,
  current FLOAT NOT NULL,
  power FLOAT NOT NULL,
  timestamp DATETIME NOT NULL
);

CREATE TABLE PanelPositionLogs (
  position_id INTEGER PRIMARY KEY,
  device_id INTEGER NOT NULL REFERENCES Devices(device_id),
  horizontal_angle INT NOT NULL,
  vertical_angle INT NOT NULL,
  light_intensity_ldr INT NOT NULL,
  mode VARCHAR(10) NOT NULL CHECK (mode IN ('AUTO','MANUAL')),
  timestamp DATETIME NOT NULL
);

CREATE TABLE DeviceAlarms (
  alarm_id INTEGER PRIMARY KEY,
  device_id INTEGER NOT NULL REFERENCES Devices(device_id),
  alarm_type VARCHAR(30) NOT NULL CHECK (alarm_type IN ('OVERVOLTAGE','CONNECTION_LOST')),
  message TEXT NOT NULL,
  created_at DATETIME NOT NULL
);