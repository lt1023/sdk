.class public final Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMasterPlaylist$Rendition;
.super Ljava/lang/Object;
.source "HlsMasterPlaylist.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMasterPlaylist;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Rendition"
.end annotation


# instance fields
.field public final format:Landroidx/media2/exoplayer/external/Format;

.field public final groupId:Ljava/lang/String;

.field public final name:Ljava/lang/String;

.field public final url:Landroid/net/Uri;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/net/Uri;Landroidx/media2/exoplayer/external/Format;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "url"    # Landroid/net/Uri;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "format"    # Landroidx/media2/exoplayer/external/Format;
    .param p3, "groupId"    # Ljava/lang/String;
    .param p4, "name"    # Ljava/lang/String;

    .line 159
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 160
    iput-object p1, p0, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMasterPlaylist$Rendition;->url:Landroid/net/Uri;

    .line 161
    iput-object p2, p0, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMasterPlaylist$Rendition;->format:Landroidx/media2/exoplayer/external/Format;

    .line 162
    iput-object p3, p0, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMasterPlaylist$Rendition;->groupId:Ljava/lang/String;

    .line 163
    iput-object p4, p0, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMasterPlaylist$Rendition;->name:Ljava/lang/String;

    .line 164
    return-void
.end method
