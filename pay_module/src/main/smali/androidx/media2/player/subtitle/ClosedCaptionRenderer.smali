.class public Landroidx/media2/player/subtitle/ClosedCaptionRenderer;
.super Landroidx/media2/player/subtitle/SubtitleController$Renderer;
.source "ClosedCaptionRenderer.java"


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP_PREFIX:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media2/player/subtitle/ClosedCaptionRenderer$Cea608CCWidget;,
        Landroidx/media2/player/subtitle/ClosedCaptionRenderer$Cea608CaptionTrack;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ClosedCaptionRenderer"


# instance fields
.field private mCCWidget:Landroidx/media2/player/subtitle/ClosedCaptionRenderer$Cea608CCWidget;

.field private final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .line 56
    invoke-direct {p0}, Landroidx/media2/player/subtitle/SubtitleController$Renderer;-><init>()V

    .line 57
    iput-object p1, p0, Landroidx/media2/player/subtitle/ClosedCaptionRenderer;->mContext:Landroid/content/Context;

    .line 58
    return-void
.end method


# virtual methods
.method public createTrack(Landroid/media/MediaFormat;)Landroidx/media2/player/subtitle/SubtitleTrack;
    .locals 4
    .param p1, "format"    # Landroid/media/MediaFormat;

    .line 71
    const-string v0, "mime"

    invoke-virtual {p1, v0}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 72
    .local v0, "mimeType":Ljava/lang/String;
    const-string v1, "text/cea-608"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 73
    iget-object v1, p0, Landroidx/media2/player/subtitle/ClosedCaptionRenderer;->mCCWidget:Landroidx/media2/player/subtitle/ClosedCaptionRenderer$Cea608CCWidget;

    if-nez v1, :cond_0

    .line 74
    new-instance v1, Landroidx/media2/player/subtitle/ClosedCaptionRenderer$Cea608CCWidget;

    iget-object v2, p0, Landroidx/media2/player/subtitle/ClosedCaptionRenderer;->mContext:Landroid/content/Context;

    invoke-direct {v1, p0, v2}, Landroidx/media2/player/subtitle/ClosedCaptionRenderer$Cea608CCWidget;-><init>(Landroidx/media2/player/subtitle/ClosedCaptionRenderer;Landroid/content/Context;)V

    iput-object v1, p0, Landroidx/media2/player/subtitle/ClosedCaptionRenderer;->mCCWidget:Landroidx/media2/player/subtitle/ClosedCaptionRenderer$Cea608CCWidget;

    goto :goto_0

    .line 73
    :cond_0
    nop

    .line 76
    :goto_0
    new-instance v1, Landroidx/media2/player/subtitle/ClosedCaptionRenderer$Cea608CaptionTrack;

    iget-object v2, p0, Landroidx/media2/player/subtitle/ClosedCaptionRenderer;->mCCWidget:Landroidx/media2/player/subtitle/ClosedCaptionRenderer$Cea608CCWidget;

    invoke-direct {v1, v2, p1}, Landroidx/media2/player/subtitle/ClosedCaptionRenderer$Cea608CaptionTrack;-><init>(Landroidx/media2/player/subtitle/ClosedCaptionRenderer$Cea608CCWidget;Landroid/media/MediaFormat;)V

    return-object v1

    .line 78
    :cond_1
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No matching format: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/media/MediaFormat;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public supports(Landroid/media/MediaFormat;)Z
    .locals 2
    .param p1, "format"    # Landroid/media/MediaFormat;

    .line 62
    const-string v0, "mime"

    invoke-virtual {p1, v0}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 63
    const-string v0, "mime"

    invoke-virtual {p1, v0}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 64
    .local v0, "mimeType":Ljava/lang/String;
    const-string v1, "text/cea-608"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1

    .line 66
    .end local v0    # "mimeType":Ljava/lang/String;
    :cond_0
    const/4 v0, 0x0

    return v0
.end method
