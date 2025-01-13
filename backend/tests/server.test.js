import request from 'supertest';
import app from '../server.js';

describe('API Endpoints', () => {
  it('should respond to health check', async () => {
    const res = await request(app).get('/health');
    expect(res.statusCode).toBe(200);
  });
});