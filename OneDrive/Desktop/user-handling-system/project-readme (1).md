# Full-Stack Node.js Application

A modern full-stack application built with Node.js, Express, MongoDB, and React.

## Project Structure
```
project-root/
├── backend/           # Express server and API
│   ├── routes/        # API route definitions
│   ├── controllers/   # Request handlers
│   ├── models/        # Database models
│   ├── server.js      # Server entry point
│   └── package.json   # Backend dependencies
├── frontend/          # React application
│   ├── src/          # Source files
│   ├── index.html    # HTML entry point
│   ├── vite.config.js # Vite configuration
│   └── package.json   # Frontend dependencies
└── README.md         # Project documentation
```

## Prerequisites

- Node.js (v14 or higher)
- MongoDB (local installation or cloud account)
- npm or yarn package manager

## Getting Started

### Setting up the Backend

1. Navigate to the backend directory:
```bash
cd backend
```

2. Install dependencies:
```bash
npm install
```

3. Create a `.env` file in the backend directory (optional):
```
PORT=5000
MONGODB_URI=mongodb://localhost:27017/fullstack_app
```

4. Start the server:
```bash
# Development mode
npm run dev

# Production mode
npm start
```

The backend server will run on `http://localhost:5000`.

### Setting up the Frontend

1. Navigate to the frontend directory:
```bash
cd frontend
```

2. Install dependencies:
```bash
npm install
```

3. Start the development server:
```bash
npm run dev
```

The frontend application will be available at `http://localhost:3000`.

## Features

- User management system
- RESTful API endpoints
- MongoDB database integration
- React frontend with modern UI
- Real-time updates

## API Endpoints

### Users
- `GET /api/users` - Get all users
- `POST /api/users` - Create a new user
- Request body example:
  ```json
  {
    "name": "John Doe",
    "email": "john@example.com"
  }
  ```

## Development

### Backend Development
- The server uses `nodemon` for automatic restarts during development
- API routes are modular and located in the `routes` directory
- MongoDB models are defined in the `models` directory

### Frontend Development
- Built with Vite for faster development experience
- React components are in the `src/components` directory
- Uses Axios for API communication

## Building for Production

### Frontend Build
```bash
cd frontend
npm run build
```
The build output will be in the `frontend/dist` directory.

### Backend Build
```bash
cd backend
npm run build
```

## Troubleshooting

Common issues and solutions:

1. MongoDB Connection Issues
   - Ensure MongoDB is running locally
   - Check connection string in server.js
   - Verify network connectivity

2. Frontend API Connection
   - Confirm backend server is running
   - Check API URL in frontend code
   - Verify CORS settings in backend

## Contributing

1. Fork the repository
2. Create a feature branch
3. Commit your changes
4. Push to the branch
5. Create a Pull Request

## License

This project is licensed under the MIT License - see the LICENSE file for details.
