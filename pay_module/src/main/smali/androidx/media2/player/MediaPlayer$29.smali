.class Landroidx/media2/player/MediaPlayer$29;
.super Ljava/lang/Object;
.source "MediaPlayer.java"

# interfaces
.implements Landroidx/media2/player/MediaPlayer2$OnDrmConfigHelper;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/media2/player/MediaPlayer;->setOnDrmConfigHelper(Landroidx/media2/player/MediaPlayer$OnDrmConfigHelper;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/media2/player/MediaPlayer;

.field final synthetic val$listener:Landroidx/media2/player/MediaPlayer$OnDrmConfigHelper;


# direct methods
.method constructor <init>(Landroidx/media2/player/MediaPlayer;Landroidx/media2/player/MediaPlayer$OnDrmConfigHelper;)V
    .locals 0
    .param p1, "this$0"    # Landroidx/media2/player/MediaPlayer;

    .line 2675
    iput-object p1, p0, Landroidx/media2/player/MediaPlayer$29;->this$0:Landroidx/media2/player/MediaPlayer;

    iput-object p2, p0, Landroidx/media2/player/MediaPlayer$29;->val$listener:Landroidx/media2/player/MediaPlayer$OnDrmConfigHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDrmConfig(Landroidx/media2/player/MediaPlayer2;Landroidx/media2/common/MediaItem;)V
    .locals 2
    .param p1, "mp"    # Landroidx/media2/player/MediaPlayer2;
    .param p2, "item"    # Landroidx/media2/common/MediaItem;

    .line 2678
    iget-object v0, p0, Landroidx/media2/player/MediaPlayer$29;->val$listener:Landroidx/media2/player/MediaPlayer$OnDrmConfigHelper;

    iget-object v1, p0, Landroidx/media2/player/MediaPlayer$29;->this$0:Landroidx/media2/player/MediaPlayer;

    invoke-interface {v0, v1, p2}, Landroidx/media2/player/MediaPlayer$OnDrmConfigHelper;->onDrmConfig(Landroidx/media2/player/MediaPlayer;Landroidx/media2/common/MediaItem;)V

    .line 2679
    return-void
.end method
