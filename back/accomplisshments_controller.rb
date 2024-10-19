class AccomplishmentsController < ApplicationController
    require 'prisma-client'
    Prisma = PrismaClient.new
  
    def index
      accomplishments = Prisma.accomplishment.find_many(orderBy: { createdAt: 'desc' })
      render json: accomplishments
    end
  
    def create
      accomplishment = Prisma.accomplishment.create(
        data: {
          description: params[:description]
        }
      )
      render json: accomplishment, status: :created
    end
  end
  