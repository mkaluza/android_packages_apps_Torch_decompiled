.class Lnet/cactii/flash2/TorchService$1;
.super Landroid/os/Handler;
.source "TorchService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/cactii/flash2/TorchService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/cactii/flash2/TorchService;


# direct methods
.method constructor <init>(Lnet/cactii/flash2/TorchService;)V
    .locals 0
    .parameter

    .prologue
    .line 39
    iput-object p1, p0, Lnet/cactii/flash2/TorchService$1;->this$0:Lnet/cactii/flash2/TorchService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 42
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 48
    :goto_0
    return-void

    .line 44
    :pswitch_0
    iget-object v0, p0, Lnet/cactii/flash2/TorchService$1;->this$0:Lnet/cactii/flash2/TorchService;

    #calls: Lnet/cactii/flash2/TorchService;->setFlashModeOrStop()V
    invoke-static {v0}, Lnet/cactii/flash2/TorchService;->access$000(Lnet/cactii/flash2/TorchService;)V

    .line 45
    const/4 v0, 0x1

    const-wide/16 v1, 0x64

    invoke-virtual {p0, v0, v1, v2}, Lnet/cactii/flash2/TorchService$1;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 42
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
