module TonClient

  class Debot
    include CommonInstanceHelpers

    attr_reader :core, :context
    MODULE = self.to_s.downcase.gsub(/^(.+::|)(\w+)$/, '\2').freeze

    def initialize(context: Context.new, core: TonClient::TonBinding)
      @context = context
      @core = core
    end

    # INPUT: ParamsOfInit
    # address: String -     #     # Debot smart contract address
    # RESPONSE: RegisteredDebot
    # debot_handle: DebotHandle -     #     # Debot handle which references an instance of debot engine.
    # debot_abi: String -     #     # Debot abi as json string.
    # info: DebotInfo -     #     # Debot metadata.
    def init(payload, &block)
      core.requestLibrary(context: context.id, method_name: full_method_name(MODULE, __method__.to_s), payload: payload, &block)
    end

    # INPUT: ParamsOfStart
    # debot_handle: DebotHandle -     #     # Debot handle which references an instance of debot engine.
    def start(payload, &block)
      core.requestLibrary(context: context.id, method_name: full_method_name(MODULE, __method__.to_s), payload: payload, &block)
    end

    # INPUT: ParamsOfFetch
    # address: String -     #     # Debot smart contract address.
    # RESPONSE: ResultOfFetch
    # info: DebotInfo -     #     # Debot metadata.
    def fetch(payload, &block)
      core.requestLibrary(context: context.id, method_name: full_method_name(MODULE, __method__.to_s), payload: payload, &block)
    end

    # INPUT: ParamsOfExecute
    # debot_handle: DebotHandle -     #     # Debot handle which references an instance of debot engine.
    # action: DebotAction -     #     # Debot Action that must be executed.
    def execute(payload, &block)
      core.requestLibrary(context: context.id, method_name: full_method_name(MODULE, __method__.to_s), payload: payload, &block)
    end

    # INPUT: ParamsOfSend
    # debot_handle: DebotHandle -     #     # Debot handle which references an instance of debot engine.
    # message: String -     #     # BOC of internal message to debot encoded in base64 format.
    def send(payload, &block)
      core.requestLibrary(context: context.id, method_name: full_method_name(MODULE, __method__.to_s), payload: payload, &block)
    end

    # INPUT: ParamsOfRemove
    # debot_handle: DebotHandle -     #     # Debot handle which references an instance of debot engine.
    def remove(payload, &block)
      core.requestLibrary(context: context.id, method_name: full_method_name(MODULE, __method__.to_s), payload: payload, &block)
    end

  end
end

