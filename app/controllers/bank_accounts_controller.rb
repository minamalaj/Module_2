class BankAccountsController < ApplicationController
    def index
        @bank_accounts = BankAccount.all
    end

    def show
        @bank_account = BankAccount.find(params[:id])
    end

    def new
        @bank_account = BankAccount.new
    end

    def create
        @bank_account = BankAccount.create(bank_account_params)
        redirect_to @bank_account
    end

    def edit
        @bank_account = BankAccount.find(params[:id])
    end

    def update
        @bank_account = BankAccount.find(params[:id])
        @bank_account.update(bank_account_params)
        redirect_to @bank_account
    end

    private 

    def bank_account_params
        params.require(:bank_account).permit!
    end
end
