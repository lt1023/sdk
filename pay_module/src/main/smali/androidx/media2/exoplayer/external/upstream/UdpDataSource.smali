.class public final Landroidx/media2/exoplayer/external/upstream/UdpDataSource;
.super Landroidx/media2/exoplayer/external/upstream/BaseDataSource;
.source "UdpDataSource.java"


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media2/exoplayer/external/upstream/UdpDataSource$UdpDataSourceException;
    }
.end annotation


# static fields
.field public static final DEFAULT_MAX_PACKET_SIZE:I = 0x7d0

.field public static final DEFAULT_SOCKET_TIMEOUT_MILLIS:I = 0x1f40


# instance fields
.field private address:Ljava/net/InetAddress;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private multicastSocket:Ljava/net/MulticastSocket;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private opened:Z

.field private final packet:Ljava/net/DatagramPacket;

.field private final packetBuffer:[B

.field private packetRemaining:I

.field private socket:Ljava/net/DatagramSocket;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private socketAddress:Ljava/net/InetSocketAddress;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final socketTimeoutMillis:I

.field private uri:Landroid/net/Uri;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 73
    const/16 v0, 0x7d0

    invoke-direct {p0, v0}, Landroidx/media2/exoplayer/external/upstream/UdpDataSource;-><init>(I)V

    .line 74
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "maxPacketSize"    # I

    .line 82
    const/16 v0, 0x1f40

    invoke-direct {p0, p1, v0}, Landroidx/media2/exoplayer/external/upstream/UdpDataSource;-><init>(II)V

    .line 83
    return-void
.end method

.method public constructor <init>(II)V
    .locals 3
    .param p1, "maxPacketSize"    # I
    .param p2, "socketTimeoutMillis"    # I

    .line 93
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroidx/media2/exoplayer/external/upstream/BaseDataSource;-><init>(Z)V

    .line 94
    iput p2, p0, Landroidx/media2/exoplayer/external/upstream/UdpDataSource;->socketTimeoutMillis:I

    .line 95
    new-array v0, p1, [B

    iput-object v0, p0, Landroidx/media2/exoplayer/external/upstream/UdpDataSource;->packetBuffer:[B

    .line 96
    new-instance v0, Ljava/net/DatagramPacket;

    iget-object v1, p0, Landroidx/media2/exoplayer/external/upstream/UdpDataSource;->packetBuffer:[B

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, p1}, Ljava/net/DatagramPacket;-><init>([BII)V

    iput-object v0, p0, Landroidx/media2/exoplayer/external/upstream/UdpDataSource;->packet:Ljava/net/DatagramPacket;

    .line 97
    return-void
.end method


# virtual methods
.method public close()V
    .locals 3

    .line 162
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/media2/exoplayer/external/upstream/UdpDataSource;->uri:Landroid/net/Uri;

    .line 163
    iget-object v1, p0, Landroidx/media2/exoplayer/external/upstream/UdpDataSource;->multicastSocket:Ljava/net/MulticastSocket;

    if-eqz v1, :cond_0

    .line 165
    nop

    :try_start_0
    iget-object v2, p0, Landroidx/media2/exoplayer/external/upstream/UdpDataSource;->address:Ljava/net/InetAddress;

    nop

    invoke-virtual {v1, v2}, Ljava/net/MulticastSocket;->leaveGroup(Ljava/net/InetAddress;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 168
    nop

    goto :goto_0

    .line 166
    :catch_0
    move-exception v1

    nop

    .line 169
    :goto_0
    nop

    iput-object v0, p0, Landroidx/media2/exoplayer/external/upstream/UdpDataSource;->multicastSocket:Ljava/net/MulticastSocket;

    goto :goto_1

    .line 163
    :cond_0
    nop

    .line 171
    :goto_1
    nop

    iget-object v1, p0, Landroidx/media2/exoplayer/external/upstream/UdpDataSource;->socket:Ljava/net/DatagramSocket;

    if-eqz v1, :cond_1

    .line 172
    nop

    invoke-virtual {v1}, Ljava/net/DatagramSocket;->close()V

    .line 173
    nop

    iput-object v0, p0, Landroidx/media2/exoplayer/external/upstream/UdpDataSource;->socket:Ljava/net/DatagramSocket;

    goto :goto_2

    .line 171
    :cond_1
    nop

    .line 175
    :goto_2
    nop

    iput-object v0, p0, Landroidx/media2/exoplayer/external/upstream/UdpDataSource;->address:Ljava/net/InetAddress;

    .line 176
    nop

    iput-object v0, p0, Landroidx/media2/exoplayer/external/upstream/UdpDataSource;->socketAddress:Ljava/net/InetSocketAddress;

    .line 177
    nop

    const/4 v0, 0x0

    iput v0, p0, Landroidx/media2/exoplayer/external/upstream/UdpDataSource;->packetRemaining:I

    .line 178
    nop

    iget-boolean v1, p0, Landroidx/media2/exoplayer/external/upstream/UdpDataSource;->opened:Z

    if-eqz v1, :cond_2

    .line 179
    nop

    iput-boolean v0, p0, Landroidx/media2/exoplayer/external/upstream/UdpDataSource;->opened:Z

    .line 180
    nop

    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/upstream/UdpDataSource;->transferEnded()V

    goto :goto_3

    .line 178
    :cond_2
    nop

    .line 182
    :goto_3
    nop

    return-void
.end method

.method public getUri()Landroid/net/Uri;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 157
    iget-object v0, p0, Landroidx/media2/exoplayer/external/upstream/UdpDataSource;->uri:Landroid/net/Uri;

    return-object v0
.end method

.method public open(Landroidx/media2/exoplayer/external/upstream/DataSpec;)J
    .locals 4
    .param p1, "dataSpec"    # Landroidx/media2/exoplayer/external/upstream/DataSpec;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media2/exoplayer/external/upstream/UdpDataSource$UdpDataSourceException;
        }
    .end annotation

    .line 101
    iget-object v0, p1, Landroidx/media2/exoplayer/external/upstream/DataSpec;->uri:Landroid/net/Uri;

    iput-object v0, p0, Landroidx/media2/exoplayer/external/upstream/UdpDataSource;->uri:Landroid/net/Uri;

    .line 102
    iget-object v0, p0, Landroidx/media2/exoplayer/external/upstream/UdpDataSource;->uri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v0

    .line 103
    .local v0, "host":Ljava/lang/String;
    iget-object v1, p0, Landroidx/media2/exoplayer/external/upstream/UdpDataSource;->uri:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->getPort()I

    move-result v1

    .line 104
    .local v1, "port":I
    invoke-virtual {p0, p1}, Landroidx/media2/exoplayer/external/upstream/UdpDataSource;->transferInitializing(Landroidx/media2/exoplayer/external/upstream/DataSpec;)V

    .line 106
    :try_start_0
    invoke-static {v0}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v2

    iput-object v2, p0, Landroidx/media2/exoplayer/external/upstream/UdpDataSource;->address:Ljava/net/InetAddress;

    .line 107
    new-instance v2, Ljava/net/InetSocketAddress;

    iget-object v3, p0, Landroidx/media2/exoplayer/external/upstream/UdpDataSource;->address:Ljava/net/InetAddress;

    invoke-direct {v2, v3, v1}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    iput-object v2, p0, Landroidx/media2/exoplayer/external/upstream/UdpDataSource;->socketAddress:Ljava/net/InetSocketAddress;

    .line 108
    iget-object v2, p0, Landroidx/media2/exoplayer/external/upstream/UdpDataSource;->address:Ljava/net/InetAddress;

    invoke-virtual {v2}, Ljava/net/InetAddress;->isMulticastAddress()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 109
    new-instance v2, Ljava/net/MulticastSocket;

    iget-object v3, p0, Landroidx/media2/exoplayer/external/upstream/UdpDataSource;->socketAddress:Ljava/net/InetSocketAddress;

    invoke-direct {v2, v3}, Ljava/net/MulticastSocket;-><init>(Ljava/net/SocketAddress;)V

    iput-object v2, p0, Landroidx/media2/exoplayer/external/upstream/UdpDataSource;->multicastSocket:Ljava/net/MulticastSocket;

    .line 110
    iget-object v2, p0, Landroidx/media2/exoplayer/external/upstream/UdpDataSource;->multicastSocket:Ljava/net/MulticastSocket;

    iget-object v3, p0, Landroidx/media2/exoplayer/external/upstream/UdpDataSource;->address:Ljava/net/InetAddress;

    invoke-virtual {v2, v3}, Ljava/net/MulticastSocket;->joinGroup(Ljava/net/InetAddress;)V

    .line 111
    iget-object v2, p0, Landroidx/media2/exoplayer/external/upstream/UdpDataSource;->multicastSocket:Ljava/net/MulticastSocket;

    iput-object v2, p0, Landroidx/media2/exoplayer/external/upstream/UdpDataSource;->socket:Ljava/net/DatagramSocket;

    goto :goto_0

    .line 113
    :cond_0
    new-instance v2, Ljava/net/DatagramSocket;

    iget-object v3, p0, Landroidx/media2/exoplayer/external/upstream/UdpDataSource;->socketAddress:Ljava/net/InetSocketAddress;

    invoke-direct {v2, v3}, Ljava/net/DatagramSocket;-><init>(Ljava/net/SocketAddress;)V

    iput-object v2, p0, Landroidx/media2/exoplayer/external/upstream/UdpDataSource;->socket:Ljava/net/DatagramSocket;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 117
    :goto_0
    nop

    .line 120
    :try_start_1
    iget-object v2, p0, Landroidx/media2/exoplayer/external/upstream/UdpDataSource;->socket:Ljava/net/DatagramSocket;

    iget v3, p0, Landroidx/media2/exoplayer/external/upstream/UdpDataSource;->socketTimeoutMillis:I

    invoke-virtual {v2, v3}, Ljava/net/DatagramSocket;->setSoTimeout(I)V
    :try_end_1
    .catch Ljava/net/SocketException; {:try_start_1 .. :try_end_1} :catch_0

    .line 123
    nop

    .line 125
    const/4 v2, 0x1

    iput-boolean v2, p0, Landroidx/media2/exoplayer/external/upstream/UdpDataSource;->opened:Z

    .line 126
    invoke-virtual {p0, p1}, Landroidx/media2/exoplayer/external/upstream/UdpDataSource;->transferStarted(Landroidx/media2/exoplayer/external/upstream/DataSpec;)V

    .line 127
    const-wide/16 v2, -0x1

    return-wide v2

    .line 121
    :catch_0
    move-exception v2

    .line 122
    .local v2, "e":Ljava/net/SocketException;
    new-instance v3, Landroidx/media2/exoplayer/external/upstream/UdpDataSource$UdpDataSourceException;

    invoke-direct {v3, v2}, Landroidx/media2/exoplayer/external/upstream/UdpDataSource$UdpDataSourceException;-><init>(Ljava/io/IOException;)V

    throw v3

    .line 115
    .end local v2    # "e":Ljava/net/SocketException;
    :catch_1
    move-exception v2

    .line 116
    .local v2, "e":Ljava/io/IOException;
    new-instance v3, Landroidx/media2/exoplayer/external/upstream/UdpDataSource$UdpDataSourceException;

    invoke-direct {v3, v2}, Landroidx/media2/exoplayer/external/upstream/UdpDataSource$UdpDataSourceException;-><init>(Ljava/io/IOException;)V

    throw v3
.end method

.method public read([BII)I
    .locals 3
    .param p1, "buffer"    # [B
    .param p2, "offset"    # I
    .param p3, "readLength"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media2/exoplayer/external/upstream/UdpDataSource$UdpDataSourceException;
        }
    .end annotation

    .line 132
    if-nez p3, :cond_0

    .line 133
    const/4 v0, 0x0

    return v0

    .line 136
    :cond_0
    iget v0, p0, Landroidx/media2/exoplayer/external/upstream/UdpDataSource;->packetRemaining:I

    if-nez v0, :cond_1

    .line 139
    :try_start_0
    iget-object v0, p0, Landroidx/media2/exoplayer/external/upstream/UdpDataSource;->socket:Ljava/net/DatagramSocket;

    iget-object v1, p0, Landroidx/media2/exoplayer/external/upstream/UdpDataSource;->packet:Ljava/net/DatagramPacket;

    invoke-virtual {v0, v1}, Ljava/net/DatagramSocket;->receive(Ljava/net/DatagramPacket;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 142
    nop

    .line 143
    iget-object v0, p0, Landroidx/media2/exoplayer/external/upstream/UdpDataSource;->packet:Ljava/net/DatagramPacket;

    invoke-virtual {v0}, Ljava/net/DatagramPacket;->getLength()I

    move-result v0

    iput v0, p0, Landroidx/media2/exoplayer/external/upstream/UdpDataSource;->packetRemaining:I

    .line 144
    iget v0, p0, Landroidx/media2/exoplayer/external/upstream/UdpDataSource;->packetRemaining:I

    invoke-virtual {p0, v0}, Landroidx/media2/exoplayer/external/upstream/UdpDataSource;->bytesTransferred(I)V

    goto :goto_0

    .line 140
    :catch_0
    move-exception v0

    .line 141
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Landroidx/media2/exoplayer/external/upstream/UdpDataSource$UdpDataSourceException;

    invoke-direct {v1, v0}, Landroidx/media2/exoplayer/external/upstream/UdpDataSource$UdpDataSourceException;-><init>(Ljava/io/IOException;)V

    throw v1

    .line 136
    .end local v0    # "e":Ljava/io/IOException;
    :cond_1
    nop

    .line 147
    :goto_0
    iget-object v0, p0, Landroidx/media2/exoplayer/external/upstream/UdpDataSource;->packet:Ljava/net/DatagramPacket;

    invoke-virtual {v0}, Ljava/net/DatagramPacket;->getLength()I

    move-result v0

    iget v1, p0, Landroidx/media2/exoplayer/external/upstream/UdpDataSource;->packetRemaining:I

    sub-int/2addr v0, v1

    .line 148
    .local v0, "packetOffset":I
    invoke-static {v1, p3}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 149
    .local v1, "bytesToRead":I
    iget-object v2, p0, Landroidx/media2/exoplayer/external/upstream/UdpDataSource;->packetBuffer:[B

    invoke-static {v2, v0, p1, p2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 150
    iget v2, p0, Landroidx/media2/exoplayer/external/upstream/UdpDataSource;->packetRemaining:I

    sub-int/2addr v2, v1

    iput v2, p0, Landroidx/media2/exoplayer/external/upstream/UdpDataSource;->packetRemaining:I

    .line 151
    return v1
.end method
