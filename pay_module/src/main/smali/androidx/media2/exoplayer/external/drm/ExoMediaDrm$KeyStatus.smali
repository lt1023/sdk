.class public final Landroidx/media2/exoplayer/external/drm/ExoMediaDrm$KeyStatus;
.super Ljava/lang/Object;
.source "ExoMediaDrm.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media2/exoplayer/external/drm/ExoMediaDrm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "KeyStatus"
.end annotation


# instance fields
.field private final keyId:[B

.field private final statusCode:I


# direct methods
.method public constructor <init>(I[B)V
    .locals 0
    .param p1, "statusCode"    # I
    .param p2, "keyId"    # [B

    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 122
    iput p1, p0, Landroidx/media2/exoplayer/external/drm/ExoMediaDrm$KeyStatus;->statusCode:I

    .line 123
    iput-object p2, p0, Landroidx/media2/exoplayer/external/drm/ExoMediaDrm$KeyStatus;->keyId:[B

    .line 124
    return-void
.end method


# virtual methods
.method public getKeyId()[B
    .locals 1

    .line 131
    iget-object v0, p0, Landroidx/media2/exoplayer/external/drm/ExoMediaDrm$KeyStatus;->keyId:[B

    return-object v0
.end method

.method public getStatusCode()I
    .locals 1

    .line 127
    iget v0, p0, Landroidx/media2/exoplayer/external/drm/ExoMediaDrm$KeyStatus;->statusCode:I

    return v0
.end method
