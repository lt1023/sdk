.class public final Landroidx/media2/exoplayer/external/source/ClippingMediaSource$IllegalClippingException;
.super Ljava/io/IOException;
.source "ClippingMediaSource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media2/exoplayer/external/source/ClippingMediaSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "IllegalClippingException"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media2/exoplayer/external/source/ClippingMediaSource$IllegalClippingException$Reason;
    }
.end annotation


# static fields
.field public static final REASON_INVALID_PERIOD_COUNT:I = 0x0

.field public static final REASON_NOT_SEEKABLE_TO_START:I = 0x1

.field public static final REASON_START_EXCEEDS_END:I = 0x2


# instance fields
.field public final reason:I


# direct methods
.method public constructor <init>(I)V
    .locals 3
    .param p1, "reason"    # I

    .line 69
    const-string v0, "Illegal clipping: "

    invoke-static {p1}, Landroidx/media2/exoplayer/external/source/ClippingMediaSource$IllegalClippingException;->getReasonDescription(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v0, v1

    :goto_0
    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 70
    iput p1, p0, Landroidx/media2/exoplayer/external/source/ClippingMediaSource$IllegalClippingException;->reason:I

    .line 71
    return-void
.end method

.method private static getReasonDescription(I)Ljava/lang/String;
    .locals 1
    .param p0, "reason"    # I

    .line 74
    packed-switch p0, :pswitch_data_0

    .line 82
    const-string/jumbo v0, "unknown"

    return-object v0

    .line 80
    :pswitch_0
    const-string v0, "start exceeds end"

    return-object v0

    .line 78
    :pswitch_1
    const-string v0, "not seekable to start"

    return-object v0

    .line 76
    :pswitch_2
    const-string v0, "invalid period count"

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
