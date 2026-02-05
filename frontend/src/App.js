import React from 'react';
import { BrowserRouter as Router, Routes, Route, Navigate } from 'react-router-dom';
import { AuthProvider } from './contexts/AuthContext';
import { WalletProvider } from './contexts/WalletContext';

// Pages
import Landing from './pages/Landing';
import Login from './pages/Login';
import Register from './pages/Register';
import Dashboard from './pages/Dashboard';
import Profile from './pages/Profile';
import JobFeed from './pages/JobFeed';
import JobDetails from './pages/JobDetails';
import CreateJob from './pages/CreateJob';
import MyJobs from './pages/MyJobs';
import Applications from './pages/Applications';

// Components
import PrivateRoute from './components/PrivateRoute';
import Navbar from './components/Navbar';

function App() {
  return (
    <Router>
      <AuthProvider>
        <WalletProvider>
          <div className="App min-h-screen bg-gray-50">
            <Navbar />
            <Routes>
              {/* Public Routes */}
              <Route path="/" element={<Landing />} />
              <Route path="/login" element={<Login />} />
              <Route path="/register" element={<Register />} />

              {/* Protected Routes */}
              <Route path="/dashboard" element={
                <PrivateRoute>
                  <Dashboard />
                </PrivateRoute>
              } />
              <Route path="/profile/:id?" element={
                <PrivateRoute>
                  <Profile />
                </PrivateRoute>
              } />
              <Route path="/jobs" element={
                <PrivateRoute>
                  <JobFeed />
                </PrivateRoute>
              } />
              <Route path="/jobs/:id" element={
                <PrivateRoute>
                  <JobDetails />
                </PrivateRoute>
              } />
              <Route path="/create-job" element={
                <PrivateRoute>
                  <CreateJob />
                </PrivateRoute>
              } />
              <Route path="/my-jobs" element={
                <PrivateRoute>
                  <MyJobs />
                </PrivateRoute>
              } />
              <Route path="/applications" element={
                <PrivateRoute>
                  <Applications />
                </PrivateRoute>
              } />

              {/* Fallback */}
              <Route path="*" element={<Navigate to="/" replace />} />
            </Routes>
          </div>
        </WalletProvider>
      </AuthProvider>
    </Router>
  );
}

export default App;
