# Eatables - Food Ordering System

Eatables is a comprehensive food ordering system built with Flutter and Node.js, featuring real-time communication and scalable architecture. The project is divided into three main components: user application, admin dashboard, and backend server.

## 🚀 System Architecture

```
├── User App (Flutter)
├── Admin Dashboard (Flutter)
└── Backend Server (Node.js)
    ├── RabbitMQ Integration
    ├── WebSocket Server
    └── Payment Gateway (Razorpay)
```

## 🛠️ Components

### 1. User Application
[![GitHub Repository](https://img.shields.io/badge/GitHub-User_App-blue?style=flat-square&logo=github)](https://github.com/Naman16rajani/eatables-protoype)

- Browse food items and menus
- Real-time order tracking
- Secure payment integration with Razorpay
- Push notifications for order updates
- User profile management
- Order history and reordering

### 2. Admin Application
[![GitHub Repository](https://img.shields.io/badge/GitHub-Admin_Application-blue?style=flat-square&logo=github)](https://github.com/Naman16rajani/eatables-admin-prototype)

- Menu management system
- Order processing and tracking
- Real-time order notifications
- Customer management
- Analytics and reporting
- Inventory management

### 3. Backend Server
[![GitHub Repository](https://img.shields.io/badge/GitHub-Backend-blue?style=flat-square&logo=github)](https://github.com/Naman16rajani/eatables-backend)

- RESTful API endpoints
- WebSocket integration for real-time updates
- RabbitMQ implementation for email queuing
- Authentication and authorization
- Payment gateway integration
- Image upload and management

## ⚡ Key Features

- **Real-time Communication**: WebSocket implementation for instant updates between user and admin applications
- **Scalable Email System**: RabbitMQ integration for handling bulk email notifications
- **Secure Payments**: Integrated Razorpay payment gateway for secure transactions
- **Image Management**: Efficient image upload and storage system
- **Push Notifications**: Real-time updates for order status and promotional offers

## 🔧 Technology Stack

- **Frontend**:
  - Flutter SDK
  - Provider State Management
  - WebSocket Client
  - Material Design

- **Backend**:
  - Node.js
  - Express.js
  - MongoDB
  - RabbitMQ
  - WebSocket Server
  - Razorpay API

## 🎥 Demo

Check out our video demonstration at https://youtu.be/1jl01TisrTY:
[![Eatables Demo](https://img.shields.io/badge/YouTube-Demo-red?style=flat-square&logo=youtube)](https://youtu.be/1jl01TisrTY)

## 📦 Installation

### Prerequisites
- Flutter SDK
- Node.js
- MongoDB
- RabbitMQ Server

### User App Setup
```bash
git clone https://github.com/Naman16rajani/eatables-protoype
cd eatables-prototype
flutter pub get
flutter run
```

### Admin Dashboard Setup
```bash
git clone https://github.com/Naman16rajani/eatables-admin-prototype
cd eatables-admin-prototype
flutter pub get
flutter run
```

### Backend Setup
```bash
git clone https://github.com/Naman16rajani/eatables-backend
cd eatables-backend
npm install
npm start
```

## ⚙️ Configuration

1. Set up environment variables in the backend:
```env
PORT=3000
MONGODB_URI=your_mongodb_uri
RABBITMQ_URL=your_rabbitmq_url
RAZORPAY_KEY_ID=your_razorpay_key_id
RAZORPAY_KEY_SECRET=your_razorpay_key_secret
```

2. Configure WebSocket endpoints in both Flutter apps
3. Set up RabbitMQ queues for email system
4. Configure Razorpay credentials
