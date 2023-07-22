import { Kafka } from 'kafkajs'

const brokers: string = process.env.KAFKA_BROKERS || '127.0.0.1:9092'
const kafka = new Kafka({
  clientId: 'users-service',
  brokers: [brokers],
})


export default kafka
