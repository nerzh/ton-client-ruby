module TonClient
  
  class Boc
    include CommonInstanceHelpers

    attr_reader :core, :context
    MODULE = 'boc'.freeze

    def initialize(context: Context.new, core: TonClient::TonBinding)
      @context = context
      @core = core
    end

    def parse_message(payload, &block)
      core.requestLibrary(context: context.id, method_name: full_method_name(MODULE, __method__.to_s), payload: payload, &block)
    end

    def parse_transaction(payload, &block)
      core.requestLibrary(context: context.id, method_name: full_method_name(MODULE, __method__.to_s), payload: payload, &block)
    end

    def parse_account(payload, &block)
      core.requestLibrary(context: context.id, method_name: full_method_name(MODULE, __method__.to_s), payload: payload, &block)
    end

    def parse_block(payload, &block)
      core.requestLibrary(context: context.id, method_name: full_method_name(MODULE, __method__.to_s), payload: payload, &block)
    end

    def parse_shardstate(payload, &block)
      core.requestLibrary(context: context.id, method_name: full_method_name(MODULE, __method__.to_s), payload: payload, &block)
    end

    def get_blockchain_config(payload, &block)
      core.requestLibrary(context: context.id, method_name: full_method_name(MODULE, __method__.to_s), payload: payload, &block)
    end

    def get_boc_hash(payload, &block)
      core.requestLibrary(context: context.id, method_name: full_method_name(MODULE, __method__.to_s), payload: payload, &block)
    end
  end
end





