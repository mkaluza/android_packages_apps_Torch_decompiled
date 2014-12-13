.class public Lnet/cactii/flash2/FlashDevice$InitializationException;
.super Ljava/lang/RuntimeException;
.source "FlashDevice.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/cactii/flash2/FlashDevice;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "InitializationException"
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .parameter "message"
    .parameter "cause"

    .prologue
    .line 72
    invoke-direct {p0, p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 73
    return-void
.end method
